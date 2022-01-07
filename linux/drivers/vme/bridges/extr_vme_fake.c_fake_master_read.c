
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct vme_master_resource {int number; int lock; struct vme_bridge* parent; } ;
struct vme_bridge {struct fake_driver* driver_priv; } ;
struct fake_driver {TYPE_1__* masters; } ;
typedef int ssize_t ;
typedef unsigned long long loff_t ;
struct TYPE_2__ {scalar_t__ aspace; scalar_t__ cycle; scalar_t__ dwidth; scalar_t__ vme_base; } ;


 scalar_t__ VME_D16 ;
 scalar_t__ VME_D32 ;
 scalar_t__ VME_D8 ;
 int fake_vmeread16 (struct fake_driver*,unsigned long long,scalar_t__,scalar_t__) ;
 scalar_t__ fake_vmeread32 (struct fake_driver*,unsigned long long,scalar_t__,scalar_t__) ;
 int fake_vmeread8 (struct fake_driver*,unsigned long long,scalar_t__,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t fake_master_read(struct vme_master_resource *image, void *buf,
  size_t count, loff_t offset)
{
 int retval;
 u32 aspace, cycle, dwidth;
 struct vme_bridge *fake_bridge;
 struct fake_driver *priv;
 int i;
 unsigned long long addr;
 unsigned int done = 0;
 unsigned int count32;

 fake_bridge = image->parent;

 priv = fake_bridge->driver_priv;

 i = image->number;

 addr = (unsigned long long)priv->masters[i].vme_base + offset;
 aspace = priv->masters[i].aspace;
 cycle = priv->masters[i].cycle;
 dwidth = priv->masters[i].dwidth;

 spin_lock(&image->lock);
 if (addr & 0x1) {
  *(u8 *)buf = fake_vmeread8(priv, addr, aspace, cycle);
  done += 1;
  if (done == count)
   goto out;
 }
 if ((dwidth == VME_D16) || (dwidth == VME_D32)) {
  if ((addr + done) & 0x2) {
   if ((count - done) < 2) {
    *(u8 *)(buf + done) = fake_vmeread8(priv,
      addr + done, aspace, cycle);
    done += 1;
    goto out;
   } else {
    *(u16 *)(buf + done) = fake_vmeread16(priv,
      addr + done, aspace, cycle);
    done += 2;
   }
  }
 }

 if (dwidth == VME_D32) {
  count32 = (count - done) & ~0x3;
  while (done < count32) {
   *(u32 *)(buf + done) = fake_vmeread32(priv, addr + done,
     aspace, cycle);
   done += 4;
  }
 } else if (dwidth == VME_D16) {
  count32 = (count - done) & ~0x3;
  while (done < count32) {
   *(u16 *)(buf + done) = fake_vmeread16(priv, addr + done,
     aspace, cycle);
   done += 2;
  }
 } else if (dwidth == VME_D8) {
  count32 = (count - done);
  while (done < count32) {
   *(u8 *)(buf + done) = fake_vmeread8(priv, addr + done,
     aspace, cycle);
   done += 1;
  }

 }

 if ((dwidth == VME_D16) || (dwidth == VME_D32)) {
  if ((count - done) & 0x2) {
   *(u16 *)(buf + done) = fake_vmeread16(priv, addr + done,
     aspace, cycle);
   done += 2;
  }
 }
 if ((count - done) & 0x1) {
  *(u8 *)(buf + done) = fake_vmeread8(priv, addr + done, aspace,
    cycle);
  done += 1;
 }

out:
 retval = count;

 spin_unlock(&image->lock);

 return retval;
}

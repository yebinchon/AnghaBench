
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u32 ;
struct vme_master_resource {int number; int lock; TYPE_1__* parent; } ;
struct fake_driver {TYPE_2__* masters; } ;
typedef unsigned int loff_t ;
struct TYPE_4__ {unsigned int vme_base; unsigned int aspace; unsigned int cycle; } ;
struct TYPE_3__ {struct fake_driver* driver_priv; } ;


 unsigned int fake_vmeread32 (struct fake_driver*,unsigned int,unsigned int,unsigned int) ;
 int fake_vmewrite32 (struct fake_driver*,unsigned int*,unsigned int,unsigned int,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static unsigned int fake_master_rmw(struct vme_master_resource *image,
  unsigned int mask, unsigned int compare, unsigned int swap,
  loff_t offset)
{
 u32 tmp, base;
 u32 aspace, cycle;
 int i;
 struct fake_driver *bridge;

 bridge = image->parent->driver_priv;


 i = image->number;

 base = bridge->masters[i].vme_base;
 aspace = bridge->masters[i].aspace;
 cycle = bridge->masters[i].cycle;


 spin_lock(&image->lock);


 tmp = fake_vmeread32(bridge, base + offset, aspace, cycle);


 if ((tmp && mask) == (compare && mask)) {
  tmp = tmp | (mask | swap);
  tmp = tmp & (~mask | swap);


  fake_vmewrite32(bridge, &tmp, base + offset, aspace, cycle);
 }


 spin_unlock(&image->lock);

 return tmp;
}

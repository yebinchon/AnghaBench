
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vme_master_resource {unsigned int number; int lock; struct vme_bridge* parent; } ;
struct vme_bridge {struct fake_driver* driver_priv; } ;
struct fake_driver {TYPE_1__* masters; } ;
struct TYPE_2__ {int enabled; unsigned long long vme_base; unsigned long long size; int aspace; int cycle; int dwidth; } ;


 int EINVAL ;
 int pr_err (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int fake_master_set(struct vme_master_resource *image, int enabled,
  unsigned long long vme_base, unsigned long long size,
  u32 aspace, u32 cycle, u32 dwidth)
{
 int retval = 0;
 unsigned int i;
 struct vme_bridge *fake_bridge;
 struct fake_driver *bridge;

 fake_bridge = image->parent;

 bridge = fake_bridge->driver_priv;


 if (vme_base & 0xFFFF) {
  pr_err("Invalid VME Window alignment\n");
  retval = -EINVAL;
  goto err_window;
 }

 if (size & 0xFFFF) {
  pr_err("Invalid size alignment\n");
  retval = -EINVAL;
  goto err_window;
 }

 if ((size == 0) && (enabled != 0)) {
  pr_err("Size must be non-zero for enabled windows\n");
  retval = -EINVAL;
  goto err_window;
 }


 switch (dwidth) {
 case 132:
 case 134:
 case 133:
  break;
 default:
  pr_err("Invalid data width\n");
  retval = -EINVAL;
  goto err_dwidth;
 }


 switch (aspace) {
 case 139:
 case 138:
 case 137:
 case 136:
 case 135:
 case 131:
 case 130:
 case 129:
 case 128:
  break;
 default:
  pr_err("Invalid address space\n");
  retval = -EINVAL;
  goto err_aspace;
 }

 spin_lock(&image->lock);

 i = image->number;

 bridge->masters[i].enabled = enabled;
 bridge->masters[i].vme_base = vme_base;
 bridge->masters[i].size = size;
 bridge->masters[i].aspace = aspace;
 bridge->masters[i].cycle = cycle;
 bridge->masters[i].dwidth = dwidth;

 spin_unlock(&image->lock);

 return 0;

err_aspace:
err_dwidth:
err_window:
 return retval;

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vme_slave_resource {unsigned int number; int mtx; struct vme_bridge* parent; } ;
struct vme_bridge {struct fake_driver* driver_priv; } ;
struct fake_driver {TYPE_1__* slaves; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int enabled; unsigned long long vme_base; unsigned long long size; int aspace; int cycle; int buf_base; } ;


 int EINVAL ;
 int fake_pci_to_ptr (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;

__attribute__((used)) static int fake_slave_set(struct vme_slave_resource *image, int enabled,
  unsigned long long vme_base, unsigned long long size,
  dma_addr_t buf_base, u32 aspace, u32 cycle)
{
 unsigned int i, granularity = 0;
 unsigned long long vme_bound;
 struct vme_bridge *fake_bridge;
 struct fake_driver *bridge;

 fake_bridge = image->parent;
 bridge = fake_bridge->driver_priv;

 i = image->number;

 switch (aspace) {
 case 136:
  granularity = 0x10;
  break;
 case 135:
  granularity = 0x1000;
  break;
 case 134:
  granularity = 0x10000;
  break;
 case 133:
  granularity = 0x10000;
  break;
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
 default:
  pr_err("Invalid address space\n");
  return -EINVAL;
 }





 vme_bound = vme_base + size - granularity;

 if (vme_base & (granularity - 1)) {
  pr_err("Invalid VME base alignment\n");
  return -EINVAL;
 }
 if (vme_bound & (granularity - 1)) {
  pr_err("Invalid VME bound alignment\n");
  return -EINVAL;
 }

 mutex_lock(&image->mtx);

 bridge->slaves[i].enabled = enabled;
 bridge->slaves[i].vme_base = vme_base;
 bridge->slaves[i].size = size;
 bridge->slaves[i].buf_base = fake_pci_to_ptr(buf_base);
 bridge->slaves[i].aspace = aspace;
 bridge->slaves[i].cycle = cycle;

 mutex_unlock(&image->mtx);

 return 0;
}

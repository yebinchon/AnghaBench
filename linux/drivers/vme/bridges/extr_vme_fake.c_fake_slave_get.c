
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct vme_slave_resource {unsigned int number; int mtx; TYPE_1__* parent; } ;
struct fake_driver {TYPE_2__* slaves; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int enabled; unsigned long long vme_base; unsigned long long size; int cycle; int aspace; int buf_base; } ;
struct TYPE_3__ {struct fake_driver* driver_priv; } ;


 int fake_ptr_to_pci (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int fake_slave_get(struct vme_slave_resource *image, int *enabled,
  unsigned long long *vme_base, unsigned long long *size,
  dma_addr_t *buf_base, u32 *aspace, u32 *cycle)
{
 unsigned int i;
 struct fake_driver *bridge;

 bridge = image->parent->driver_priv;

 i = image->number;

 mutex_lock(&image->mtx);

 *enabled = bridge->slaves[i].enabled;
 *vme_base = bridge->slaves[i].vme_base;
 *size = bridge->slaves[i].size;
 *buf_base = fake_ptr_to_pci(bridge->slaves[i].buf_base);
 *aspace = bridge->slaves[i].aspace;
 *cycle = bridge->slaves[i].cycle;

 mutex_unlock(&image->mtx);

 return 0;
}

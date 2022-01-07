
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct vme_master_resource {unsigned int number; TYPE_1__* parent; } ;
struct fake_driver {TYPE_2__* masters; } ;
struct TYPE_4__ {int enabled; unsigned long long vme_base; unsigned long long size; int dwidth; int cycle; int aspace; } ;
struct TYPE_3__ {struct fake_driver* driver_priv; } ;



__attribute__((used)) static int __fake_master_get(struct vme_master_resource *image, int *enabled,
  unsigned long long *vme_base, unsigned long long *size,
  u32 *aspace, u32 *cycle, u32 *dwidth)
{
 unsigned int i;
 struct fake_driver *bridge;

 bridge = image->parent->driver_priv;

 i = image->number;

 *enabled = bridge->masters[i].enabled;
 *vme_base = bridge->masters[i].vme_base;
 *size = bridge->masters[i].size;
 *aspace = bridge->masters[i].aspace;
 *cycle = bridge->masters[i].cycle;
 *dwidth = bridge->masters[i].dwidth;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_pcibk_device {int dummy; } ;
struct TYPE_2__ {int (* init ) (struct xen_pcibk_device*) ;} ;


 int stub1 (struct xen_pcibk_device*) ;
 TYPE_1__* xen_pcibk_backend ;

__attribute__((used)) static inline int xen_pcibk_init_devices(struct xen_pcibk_device *pdev)
{
 if (xen_pcibk_backend && xen_pcibk_backend->init)
  return xen_pcibk_backend->init(pdev);
 return -1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_pcibk_device {int dummy; } ;
struct TYPE_2__ {void (* free ) (struct xen_pcibk_device*) ;} ;


 void stub1 (struct xen_pcibk_device*) ;
 TYPE_1__* xen_pcibk_backend ;

__attribute__((used)) static inline void xen_pcibk_release_devices(struct xen_pcibk_device *pdev)
{
 if (xen_pcibk_backend && xen_pcibk_backend->free)
  return xen_pcibk_backend->free(pdev);
}

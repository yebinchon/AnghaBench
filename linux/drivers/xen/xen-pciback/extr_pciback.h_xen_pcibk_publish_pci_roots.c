
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_pcibk_device {int dummy; } ;
typedef int publish_pci_root_cb ;
struct TYPE_2__ {int (* publish ) (struct xen_pcibk_device*,int ) ;} ;


 int stub1 (struct xen_pcibk_device*,int ) ;
 TYPE_1__* xen_pcibk_backend ;

__attribute__((used)) static inline int xen_pcibk_publish_pci_roots(struct xen_pcibk_device *pdev,
           publish_pci_root_cb cb)
{
 if (xen_pcibk_backend && xen_pcibk_backend->publish)
  return xen_pcibk_backend->publish(pdev, cb);
 return -1;
}

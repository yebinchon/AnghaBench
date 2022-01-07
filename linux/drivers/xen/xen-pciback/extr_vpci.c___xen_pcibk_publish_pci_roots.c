
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_pcibk_device {int dummy; } ;
typedef int (* publish_pci_root_cb ) (struct xen_pcibk_device*,int ,int ) ;



__attribute__((used)) static int __xen_pcibk_publish_pci_roots(struct xen_pcibk_device *pdev,
      publish_pci_root_cb publish_cb)
{

 return publish_cb(pdev, 0, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int hdr_type; } ;


 int EINVAL ;


 int header_0 ;
 int header_1 ;
 int header_common ;
 int pci_name (struct pci_dev*) ;
 int pr_err (char*,int ,int) ;
 int xen_pcibk_config_add_fields (struct pci_dev*,int ) ;

int xen_pcibk_config_header_add_fields(struct pci_dev *dev)
{
 int err;

 err = xen_pcibk_config_add_fields(dev, header_common);
 if (err)
  goto out;

 switch (dev->hdr_type) {
 case 128:
  err = xen_pcibk_config_add_fields(dev, header_0);
  break;

 case 129:
  err = xen_pcibk_config_add_fields(dev, header_1);
  break;

 default:
  err = -EINVAL;
  pr_err("%s: Unsupported header type %d!\n",
         pci_name(dev), dev->hdr_type);
  break;
 }

out:
 return err;
}

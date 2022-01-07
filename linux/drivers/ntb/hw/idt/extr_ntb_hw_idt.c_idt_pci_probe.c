
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct idt_ntb_dev {int dummy; } ;


 scalar_t__ IS_ERR_OR_NULL (struct idt_ntb_dev*) ;
 int PTR_ERR (struct idt_ntb_dev*) ;
 int dev_info (int *,char*) ;
 int idt_check_setup (struct pci_dev*) ;
 struct idt_ntb_dev* idt_create_dev (struct pci_dev*,struct pci_device_id const*) ;
 int idt_deinit_isr (struct idt_ntb_dev*) ;
 int idt_deinit_link (struct idt_ntb_dev*) ;
 int idt_deinit_pci (struct idt_ntb_dev*) ;
 int idt_init_dbgfs (struct idt_ntb_dev*) ;
 int idt_init_isr (struct idt_ntb_dev*) ;
 int idt_init_link (struct idt_ntb_dev*) ;
 int idt_init_msg (struct idt_ntb_dev*) ;
 int idt_init_mws (struct idt_ntb_dev*) ;
 int idt_init_pci (struct idt_ntb_dev*) ;
 int idt_init_temp (struct idt_ntb_dev*) ;
 int idt_register_device (struct idt_ntb_dev*) ;
 int idt_scan_ports (struct idt_ntb_dev*) ;

__attribute__((used)) static int idt_pci_probe(struct pci_dev *pdev,
    const struct pci_device_id *id)
{
 struct idt_ntb_dev *ndev;
 int ret;


 ret = idt_check_setup(pdev);
 if (ret != 0)
  return ret;


 ndev = idt_create_dev(pdev, id);
 if (IS_ERR_OR_NULL(ndev))
  return PTR_ERR(ndev);


 ret = idt_init_pci(ndev);
 if (ret != 0)
  return ret;


 (void)idt_scan_ports(ndev);


 idt_init_link(ndev);


 ret = idt_init_mws(ndev);
 if (ret != 0)
  goto err_deinit_link;


 idt_init_msg(ndev);


 idt_init_temp(ndev);


 ret = idt_init_isr(ndev);
 if (ret != 0)
  goto err_deinit_link;


 ret = idt_register_device(ndev);
 if (ret != 0)
  goto err_deinit_isr;


 (void)idt_init_dbgfs(ndev);


 dev_info(&pdev->dev, "IDT NTB device is ready");


 return 0;

err_deinit_isr:
 idt_deinit_isr(ndev);
err_deinit_link:
 idt_deinit_link(ndev);
 idt_deinit_pci(ndev);

 return ret;
}

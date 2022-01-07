
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dev; } ;


 int EINVAL ;
 int IDT_BARSETUP_EN ;
 int IDT_BARSETUP_MODE_CFG ;
 int IDT_BARSETUP_SIZE_CFG ;
 int IDT_BARSETUP_SIZE_MASK ;
 int IDT_NT_BARSETUP0 ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;

__attribute__((used)) static int idt_check_setup(struct pci_dev *pdev)
{
 u32 data;
 int ret;


 ret = pci_read_config_dword(pdev, IDT_NT_BARSETUP0, &data);
 if (ret != 0) {
  dev_err(&pdev->dev,
   "Failed to read BARSETUP0 config register");
  return ret;
 }


 if (!(data & IDT_BARSETUP_EN) || !(data & IDT_BARSETUP_MODE_CFG)) {
  dev_err(&pdev->dev, "BAR0 doesn't map config space");
  return -EINVAL;
 }


 if ((data & IDT_BARSETUP_SIZE_MASK) != IDT_BARSETUP_SIZE_CFG) {
  dev_err(&pdev->dev, "Invalid size of config space");
  return -EINVAL;
 }

 dev_dbg(&pdev->dev, "NTB device pre-initialized correctly");

 return 0;
}

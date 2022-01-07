
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct myrb_hba {struct pci_dev* pdev; } ;


 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,unsigned char,unsigned char) ;
 int dev_notice (int *,char*,...) ;

bool myrb_err_status(struct myrb_hba *cb, unsigned char error,
  unsigned char parm0, unsigned char parm1)
{
 struct pci_dev *pdev = cb->pdev;

 switch (error) {
 case 0x00:
  dev_info(&pdev->dev,
    "Physical Device %d:%d Not Responding\n",
    parm1, parm0);
  break;
 case 0x08:
  dev_notice(&pdev->dev, "Spinning Up Drives\n");
  break;
 case 0x30:
  dev_notice(&pdev->dev, "Configuration Checksum Error\n");
  break;
 case 0x60:
  dev_notice(&pdev->dev, "Mirror Race Recovery Failed\n");
  break;
 case 0x70:
  dev_notice(&pdev->dev, "Mirror Race Recovery In Progress\n");
  break;
 case 0x90:
  dev_notice(&pdev->dev, "Physical Device %d:%d COD Mismatch\n",
      parm1, parm0);
  break;
 case 0xA0:
  dev_notice(&pdev->dev, "Logical Drive Installation Aborted\n");
  break;
 case 0xB0:
  dev_notice(&pdev->dev, "Mirror Race On A Critical Logical Drive\n");
  break;
 case 0xD0:
  dev_notice(&pdev->dev, "New Controller Configuration Found\n");
  break;
 case 0xF0:
  dev_err(&pdev->dev, "Fatal Memory Parity Error\n");
  return 1;
 default:
  dev_err(&pdev->dev, "Unknown Initialization Error %02X\n",
   error);
  return 1;
 }
 return 0;
}

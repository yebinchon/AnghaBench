
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int device; } ;
struct device {int dummy; } ;


 unsigned char BIT (unsigned char) ;
 int PT1_P1_REG ;
 int PT1_P2_REG ;
 int PT2_P1_REG ;
 int PT2_P2_REG ;
 int PT4_P1_REG ;
 int PT4_P2_REG ;
 int PT_ADDR_INDX ;
 int PT_READ_INDX ;
 int PT_SIG_1_ADDR ;
 unsigned char PT_SIG_1_DATA ;
 int PT_SIG_2_ADDR ;
 unsigned char PT_SIG_2_DATA ;
 int PT_SIG_3_ADDR ;
 unsigned char PT_SIG_3_DATA ;
 int PT_SIG_4_ADDR ;
 unsigned char PT_SIG_4_DATA ;
 int pci_read_config_byte (struct pci_dev*,int ,unsigned char*) ;
 int pci_write_config_word (struct pci_dev*,int ,int ) ;
 struct pci_dev* to_pci_dev (struct device*) ;

bool usb_amd_pt_check_port(struct device *device, int port)
{
 unsigned char value, port_shift;
 struct pci_dev *pdev;
 u16 reg;

 pdev = to_pci_dev(device);
 pci_write_config_word(pdev, PT_ADDR_INDX, PT_SIG_1_ADDR);

 pci_read_config_byte(pdev, PT_READ_INDX, &value);
 if (value != PT_SIG_1_DATA)
  return 0;

 pci_write_config_word(pdev, PT_ADDR_INDX, PT_SIG_2_ADDR);

 pci_read_config_byte(pdev, PT_READ_INDX, &value);
 if (value != PT_SIG_2_DATA)
  return 0;

 pci_write_config_word(pdev, PT_ADDR_INDX, PT_SIG_3_ADDR);

 pci_read_config_byte(pdev, PT_READ_INDX, &value);
 if (value != PT_SIG_3_DATA)
  return 0;

 pci_write_config_word(pdev, PT_ADDR_INDX, PT_SIG_4_ADDR);

 pci_read_config_byte(pdev, PT_READ_INDX, &value);
 if (value != PT_SIG_4_DATA)
  return 0;


 switch (pdev->device) {
 case 0x43b9:
 case 0x43ba:





  if (port > 6) {
   reg = PT4_P2_REG;
   port_shift = port - 7;
  } else {
   reg = PT4_P1_REG;
   port_shift = port + 1;
  }
  break;
 case 0x43bb:





  if (port > 2) {
   reg = PT2_P2_REG;
   port_shift = port - 3;
  } else {
   reg = PT2_P1_REG;
   port_shift = port + 5;
  }
  break;
 case 0x43bc:





  if (port > 3) {
   reg = PT1_P2_REG;
   port_shift = port - 4;
  } else {
   reg = PT1_P1_REG;
   port_shift = port + 4;
  }
  break;
 default:
  return 0;
 }
 pci_write_config_word(pdev, PT_ADDR_INDX, reg);
 pci_read_config_byte(pdev, PT_READ_INDX, &value);

 return !(value & BIT(port_shift));
}

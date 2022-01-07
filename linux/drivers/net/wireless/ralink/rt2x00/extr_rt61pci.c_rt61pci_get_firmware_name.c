
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rt2x00_dev {int dev; } ;


 char* FIRMWARE_RT2561 ;
 char* FIRMWARE_RT2561s ;
 char* FIRMWARE_RT2661 ;
 int PCI_DEVICE_ID ;



 int pci_read_config_word (int ,int ,int*) ;
 int to_pci_dev (int ) ;

__attribute__((used)) static char *rt61pci_get_firmware_name(struct rt2x00_dev *rt2x00dev)
{
 u16 chip;
 char *fw_name;

 pci_read_config_word(to_pci_dev(rt2x00dev->dev), PCI_DEVICE_ID, &chip);
 switch (chip) {
 case 130:
  fw_name = FIRMWARE_RT2561;
  break;
 case 129:
  fw_name = FIRMWARE_RT2561s;
  break;
 case 128:
  fw_name = FIRMWARE_RT2661;
  break;
 default:
  fw_name = ((void*)0);
  break;
 }

 return fw_name;
}

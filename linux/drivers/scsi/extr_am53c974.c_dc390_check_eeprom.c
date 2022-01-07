
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pci_dev {int dev; } ;
struct esp {int scsi_id; int num_tags; int config4; int dev; } ;


 int DC390_EEPROM_LEN ;
 size_t DC390_EE_ADAPT_SCSI_ID ;
 size_t DC390_EE_MODE2 ;
 int DC390_EE_MODE2_ACTIVE_NEGATION ;
 size_t DC390_EE_TAG_CMD_NUM ;
 int ESP_CONFIG4_RADE ;
 int ESP_CONFIG4_RAE ;
 int KERN_INFO ;
 int dc390_read_eeprom (struct pci_dev*,int*) ;
 int dev_printk (int ,int *,char*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void dc390_check_eeprom(struct esp *esp)
{
 struct pci_dev *pdev = to_pci_dev(esp->dev);
 u8 EEbuf[128];
 u16 *ptr = (u16 *)EEbuf, wval = 0;
 int i;

 dc390_read_eeprom(pdev, ptr);

 for (i = 0; i < DC390_EEPROM_LEN; i++, ptr++)
  wval += *ptr;


 if (wval != 0x1234) {
  dev_printk(KERN_INFO, &pdev->dev,
      "No valid Tekram EEprom found\n");
  return;
 }
 esp->scsi_id = EEbuf[DC390_EE_ADAPT_SCSI_ID];
 esp->num_tags = 2 << EEbuf[DC390_EE_TAG_CMD_NUM];
 if (EEbuf[DC390_EE_MODE2] & DC390_EE_MODE2_ACTIVE_NEGATION)
  esp->config4 |= ESP_CONFIG4_RADE | ESP_CONFIG4_RAE;
}

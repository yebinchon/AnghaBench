
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct NvRamType {int channel_cfg; int delay_time; } ;
struct AdapterCtlBlk {int config; struct NvRamType eeprom; scalar_t__ last_reset; } ;


 int DC395x_read8 (struct AdapterCtlBlk*,int ) ;
 int DC395x_write16 (struct AdapterCtlBlk*,int ,int ) ;
 int DC395x_write8 (struct AdapterCtlBlk*,int ,int) ;
 int DMARESETMODULE ;
 int DO_RSTMODULE ;
 int DO_RSTSCSI ;
 int HCC_AUTOTERM ;
 int HCC_PARITY ;
 int HCC_SCSI_RESET ;
 int HCC_WIDE_CARD ;
 int HZ ;
 int KERN_INFO ;
 int NAC_POWERON_SCSI_RESET ;
 int TRM_S1040_DMA_CONTROL ;
 int TRM_S1040_DMA_INTEN ;
 int TRM_S1040_GEN_STATUS ;
 int TRM_S1040_SCSI_CONTROL ;
 int TRM_S1040_SCSI_INTEN ;
 int WIDESCSI ;
 int dprintkl (int ,char*) ;
 scalar_t__ jiffies ;
 int udelay (int) ;

__attribute__((used)) static void adapter_init_chip(struct AdapterCtlBlk *acb)
{
        struct NvRamType *eeprom = &acb->eeprom;


 DC395x_write8(acb, TRM_S1040_DMA_INTEN, 0x00);
 DC395x_write8(acb, TRM_S1040_SCSI_INTEN, 0x00);


 DC395x_write16(acb, TRM_S1040_SCSI_CONTROL, DO_RSTMODULE);


 DC395x_write8(acb, TRM_S1040_DMA_CONTROL, DMARESETMODULE);
 udelay(20);


 acb->config = HCC_AUTOTERM | HCC_PARITY;
 if (DC395x_read8(acb, TRM_S1040_GEN_STATUS) & WIDESCSI)
  acb->config |= HCC_WIDE_CARD;

 if (eeprom->channel_cfg & NAC_POWERON_SCSI_RESET)
  acb->config |= HCC_SCSI_RESET;

 if (acb->config & HCC_SCSI_RESET) {
  dprintkl(KERN_INFO, "Performing initial SCSI bus reset\n");
  DC395x_write8(acb, TRM_S1040_SCSI_CONTROL, DO_RSTSCSI);



  udelay(500);

  acb->last_reset =
      jiffies + HZ / 2 +
      HZ * acb->eeprom.delay_time;


 }
}

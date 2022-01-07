
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AdapterCtlBlk {int config; } ;


 int DC395x_read8 (struct AdapterCtlBlk*,int ) ;
 int DC395x_write8 (struct AdapterCtlBlk*,int ,int ) ;
 int HCC_SCSI_RESET ;
 int TRM_S1040_DMA_INTEN ;
 int TRM_S1040_SCSI_INTEN ;
 int TRM_S1040_SCSI_INTSTATUS ;
 int reset_scsi_bus (struct AdapterCtlBlk*) ;

__attribute__((used)) static void adapter_uninit_chip(struct AdapterCtlBlk *acb)
{

 DC395x_write8(acb, TRM_S1040_DMA_INTEN, 0);
 DC395x_write8(acb, TRM_S1040_SCSI_INTEN, 0);


 if (acb->config & HCC_SCSI_RESET)
  reset_scsi_bus(acb);


 DC395x_read8(acb, TRM_S1040_SCSI_INTSTATUS);
}

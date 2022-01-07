
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AdapterCtlBlk {int acb_flag; } ;


 int DBG_0 ;
 int DC395x_read8 (struct AdapterCtlBlk*,int ) ;
 int DC395x_write16 (struct AdapterCtlBlk*,int ,int ) ;
 int DO_RSTSCSI ;
 int INT_SCSIRESET ;
 int RESET_DEV ;
 int TRM_S1040_SCSI_CONTROL ;
 int TRM_S1040_SCSI_INTSTATUS ;
 int dprintkdbg (int ,char*,struct AdapterCtlBlk*) ;

__attribute__((used)) static void reset_scsi_bus(struct AdapterCtlBlk *acb)
{
 dprintkdbg(DBG_0, "reset_scsi_bus: acb=%p\n", acb);
 acb->acb_flag |= RESET_DEV;
 DC395x_write16(acb, TRM_S1040_SCSI_CONTROL, DO_RSTSCSI);

 while (!(DC395x_read8(acb, TRM_S1040_SCSI_INTSTATUS) & INT_SCSIRESET))
               ;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;


 int CH1 ;
 int CLRSTCNT ;
 scalar_t__ DATA_LEN ;
 int DMACNTRL0 ;
 int DMAEN ;
 int ENBUSFREE ;
 int ENDMA ;
 int ENPHASEMIS ;
 int ENSCSIPERR ;
 int ENSCSIRST ;
 int RSTFIFO ;
 int SCSIEN ;
 int SETPORT (int ,int) ;
 int SIMODE0 ;
 int SIMODE1 ;
 int SXFRCTL0 ;

__attribute__((used)) static void datai_init(struct Scsi_Host *shpnt)
{
 SETPORT(DMACNTRL0, RSTFIFO);
 SETPORT(DMACNTRL0, RSTFIFO|ENDMA);

 SETPORT(SXFRCTL0, CH1|CLRSTCNT);
 SETPORT(SXFRCTL0, CH1|SCSIEN|DMAEN);

 SETPORT(SIMODE0, 0);
 SETPORT(SIMODE1, ENSCSIPERR | ENSCSIRST | ENPHASEMIS | ENBUSFREE);

 DATA_LEN=0;
}

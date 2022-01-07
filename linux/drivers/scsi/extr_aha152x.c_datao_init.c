
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;


 int CH1 ;
 int CLRSTCNT ;
 int CURRENT_SC ;
 int DATA_LEN ;
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
 int WRITE_READ ;
 int scsi_get_resid (int ) ;

__attribute__((used)) static void datao_init(struct Scsi_Host *shpnt)
{
 SETPORT(DMACNTRL0, WRITE_READ | RSTFIFO);
 SETPORT(DMACNTRL0, WRITE_READ | ENDMA);

 SETPORT(SXFRCTL0, CH1|CLRSTCNT);
 SETPORT(SXFRCTL0, CH1|SCSIEN|DMAEN);

 SETPORT(SIMODE0, 0);
 SETPORT(SIMODE1, ENSCSIPERR | ENSCSIRST | ENPHASEMIS | ENBUSFREE );

 DATA_LEN = scsi_get_resid(CURRENT_SC);
}

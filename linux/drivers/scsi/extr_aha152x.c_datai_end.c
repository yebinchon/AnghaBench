
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;


 int CH1 ;
 int CLRSTCNT ;
 int CMD_INC_RESID (int ,int ) ;
 int CURRENT_SC ;
 int DMACNTRL0 ;
 int GETSTCNT () ;
 int SETPORT (int ,int) ;
 int SXFRCTL0 ;

__attribute__((used)) static void datai_end(struct Scsi_Host *shpnt)
{
 CMD_INC_RESID(CURRENT_SC, -GETSTCNT());

 SETPORT(SXFRCTL0, CH1|CLRSTCNT);
 SETPORT(DMACNTRL0, 0);
}

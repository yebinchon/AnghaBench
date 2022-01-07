
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ linuxstat; } ;
struct uiscmdrsp {TYPE_1__ scsi; } ;
struct scsi_cmnd {int (* scsi_done ) (struct scsi_cmnd*) ;scalar_t__ result; } ;


 int do_scsi_linuxstat (struct uiscmdrsp*,struct scsi_cmnd*) ;
 int do_scsi_nolinuxstat (struct uiscmdrsp*,struct scsi_cmnd*) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void complete_scsi_command(struct uiscmdrsp *cmdrsp,
      struct scsi_cmnd *scsicmd)
{

 scsicmd->result = cmdrsp->scsi.linuxstat;
 if (cmdrsp->scsi.linuxstat)
  do_scsi_linuxstat(cmdrsp, scsicmd);
 else
  do_scsi_nolinuxstat(cmdrsp, scsicmd);

 scsicmd->scsi_done(scsicmd);
}

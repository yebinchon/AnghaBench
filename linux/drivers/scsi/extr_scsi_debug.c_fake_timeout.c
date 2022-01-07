
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int SDEBUG_OPT_MAC_TIMEOUT ;
 int SDEBUG_OPT_TIMEOUT ;
 int abs (int) ;
 int atomic_read (int *) ;
 scalar_t__ scsi_medium_access_command (struct scsi_cmnd*) ;
 int sdebug_cmnd_count ;
 int sdebug_every_nth ;
 int sdebug_opts ;

__attribute__((used)) static bool fake_timeout(struct scsi_cmnd *scp)
{
 if (0 == (atomic_read(&sdebug_cmnd_count) % abs(sdebug_every_nth))) {
  if (sdebug_every_nth < -1)
   sdebug_every_nth = -1;
  if (SDEBUG_OPT_TIMEOUT & sdebug_opts)
   return 1;
  else if (SDEBUG_OPT_MAC_TIMEOUT & sdebug_opts &&
    scsi_medium_access_command(scp))
   return 1;
 }
 return 0;
}

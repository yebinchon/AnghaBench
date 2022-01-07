
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int SDEBUG_OPT_HOST_BUSY ;
 int abs (int ) ;
 int atomic_read (int *) ;
 int sdebug_cmnd_count ;
 int sdebug_every_nth ;
 int sdebug_opts ;

__attribute__((used)) static bool fake_host_busy(struct scsi_cmnd *scp)
{
 return (sdebug_opts & SDEBUG_OPT_HOST_BUSY) &&
  (atomic_read(&sdebug_cmnd_count) % abs(sdebug_every_nth)) == 0;
}

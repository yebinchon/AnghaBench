
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdebug_dev_info {int stopped; } ;
struct scsi_cmnd {unsigned char* cmnd; } ;


 int SDEB_IN_CDB ;
 int SDEG_RES_IMMED_MASK ;
 int atomic_read (int *) ;
 int atomic_xchg (int *,int) ;
 int check_condition_result ;
 int mk_sense_invalid_fld (struct scsi_cmnd*,int ,int,int) ;

__attribute__((used)) static int resp_start_stop(struct scsi_cmnd *scp,
      struct sdebug_dev_info *devip)
{
 unsigned char *cmd = scp->cmnd;
 int power_cond, stop;
 bool changing;

 power_cond = (cmd[4] & 0xf0) >> 4;
 if (power_cond) {
  mk_sense_invalid_fld(scp, SDEB_IN_CDB, 4, 7);
  return check_condition_result;
 }
 stop = !(cmd[4] & 1);
 changing = atomic_read(&devip->stopped) == !stop;
 atomic_xchg(&devip->stopped, stop);
 if (!changing || cmd[1] & 0x1)
  return SDEG_RES_IMMED_MASK;
 else
  return 0;
}

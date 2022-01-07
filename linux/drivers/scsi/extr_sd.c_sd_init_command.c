
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {struct request* request; } ;
struct request {int rq_disk; } ;
typedef int blk_status_t ;
struct TYPE_2__ {int provisioning_mode; } ;


 int BLK_STS_NOTSUPP ;
 int BLK_STS_TARGET ;
 int WARN_ON_ONCE (int) ;
 int req_op (struct request*) ;
 TYPE_1__* scsi_disk (int ) ;
 int sd_setup_flush_cmnd (struct scsi_cmnd*) ;
 int sd_setup_read_write_cmnd (struct scsi_cmnd*) ;
 int sd_setup_unmap_cmnd (struct scsi_cmnd*) ;
 int sd_setup_write_same10_cmnd (struct scsi_cmnd*,int) ;
 int sd_setup_write_same16_cmnd (struct scsi_cmnd*,int) ;
 int sd_setup_write_same_cmnd (struct scsi_cmnd*) ;
 int sd_setup_write_zeroes_cmnd (struct scsi_cmnd*) ;
 int sd_zbc_setup_reset_cmnd (struct scsi_cmnd*,int) ;

__attribute__((used)) static blk_status_t sd_init_command(struct scsi_cmnd *cmd)
{
 struct request *rq = cmd->request;

 switch (req_op(rq)) {
 case 139:
  switch (scsi_disk(rq->rq_disk)->provisioning_mode) {
  case 131:
   return sd_setup_unmap_cmnd(cmd);
  case 129:
   return sd_setup_write_same16_cmnd(cmd, 1);
  case 130:
   return sd_setup_write_same10_cmnd(cmd, 1);
  case 128:
   return sd_setup_write_same10_cmnd(cmd, 0);
  default:
   return BLK_STS_TARGET;
  }
 case 134:
  return sd_setup_write_zeroes_cmnd(cmd);
 case 135:
  return sd_setup_write_same_cmnd(cmd);
 case 138:
  return sd_setup_flush_cmnd(cmd);
 case 137:
 case 136:
  return sd_setup_read_write_cmnd(cmd);
 case 133:
  return sd_zbc_setup_reset_cmnd(cmd, 0);
 case 132:
  return sd_zbc_setup_reset_cmnd(cmd, 1);
 default:
  WARN_ON_ONCE(1);
  return BLK_STS_NOTSUPP;
 }
}

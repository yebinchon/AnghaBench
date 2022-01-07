
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_device {TYPE_1__* handler; } ;
struct scsi_cmnd {int cmnd; } ;
struct request {int dummy; } ;
typedef scalar_t__ blk_status_t ;
struct TYPE_6__ {scalar_t__ (* init_command ) (struct scsi_cmnd*) ;} ;
struct TYPE_5__ {int __cmd; int cmd; } ;
struct TYPE_4__ {scalar_t__ (* prep_fn ) (struct scsi_device*,struct request*) ;} ;


 int BLK_MAX_CDB ;
 scalar_t__ BLK_STS_OK ;
 struct scsi_cmnd* blk_mq_rq_to_pdu (struct request*) ;
 int memset (int ,int ,int ) ;
 TYPE_3__* scsi_cmd_to_driver (struct scsi_cmnd*) ;
 TYPE_2__* scsi_req (struct request*) ;
 scalar_t__ stub1 (struct scsi_device*,struct request*) ;
 scalar_t__ stub2 (struct scsi_cmnd*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static blk_status_t scsi_setup_fs_cmnd(struct scsi_device *sdev,
  struct request *req)
{
 struct scsi_cmnd *cmd = blk_mq_rq_to_pdu(req);

 if (unlikely(sdev->handler && sdev->handler->prep_fn)) {
  blk_status_t ret = sdev->handler->prep_fn(sdev, req);
  if (ret != BLK_STS_OK)
   return ret;
 }

 cmd->cmnd = scsi_req(req)->cmd = scsi_req(req)->__cmd;
 memset(cmd->cmnd, 0, BLK_MAX_CDB);
 return scsi_cmd_to_driver(cmd)->init_command(cmd);
}

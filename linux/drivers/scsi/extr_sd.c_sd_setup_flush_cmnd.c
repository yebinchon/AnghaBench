
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int cmd_len; int allowed; scalar_t__ transfersize; int * cmnd; int sdb; struct request* request; } ;
struct request {int timeout; TYPE_1__* q; } ;
typedef int blk_status_t ;
struct TYPE_2__ {int rq_timeout; } ;


 int BLK_STS_OK ;
 int SD_FLUSH_TIMEOUT_MULTIPLIER ;
 int SD_MAX_RETRIES ;
 int SYNCHRONIZE_CACHE ;
 int memset (int *,int ,int) ;

__attribute__((used)) static blk_status_t sd_setup_flush_cmnd(struct scsi_cmnd *cmd)
{
 struct request *rq = cmd->request;


 memset(&cmd->sdb, 0, sizeof(cmd->sdb));

 cmd->cmnd[0] = SYNCHRONIZE_CACHE;
 cmd->cmd_len = 10;
 cmd->transfersize = 0;
 cmd->allowed = SD_MAX_RETRIES;

 rq->timeout = rq->q->rq_timeout * SD_FLUSH_TIMEOUT_MULTIPLIER;
 return BLK_STS_OK;
}

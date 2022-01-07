
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct req_que {int num_outstanding_cmds; TYPE_3__** outstanding_cmds; } ;
struct qla_hw_data {int max_req_queues; int hardware_lock; TYPE_2__* isp_ops; struct req_que** req_q_map; } ;
struct fc_bsg_reply {int result; } ;
struct bsg_job {struct fc_bsg_reply* reply; } ;
struct TYPE_10__ {struct bsg_job* bsg_job; } ;
struct TYPE_12__ {scalar_t__ type; int (* free ) (TYPE_3__*) ;TYPE_1__ u; } ;
typedef TYPE_3__ srb_t ;
struct TYPE_13__ {struct qla_hw_data* hw; } ;
typedef TYPE_4__ scsi_qla_host_t ;
struct TYPE_11__ {scalar_t__ (* abort_command ) (TYPE_3__*) ;} ;


 int EIO ;
 int ENXIO ;
 scalar_t__ SRB_CT_CMD ;
 scalar_t__ SRB_ELS_CMD_HST ;
 scalar_t__ SRB_FXIOCB_BCMD ;
 int fc_bsg_to_shost (struct bsg_job*) ;
 int ql_dbg (int ,TYPE_4__*,int,char*) ;
 int ql_dbg_user ;
 int ql_log (int ,TYPE_4__*,int,char*) ;
 int ql_log_info ;
 int ql_log_warn ;
 TYPE_4__* shost_priv (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*) ;

int
qla24xx_bsg_timeout(struct bsg_job *bsg_job)
{
 struct fc_bsg_reply *bsg_reply = bsg_job->reply;
 scsi_qla_host_t *vha = shost_priv(fc_bsg_to_shost(bsg_job));
 struct qla_hw_data *ha = vha->hw;
 srb_t *sp;
 int cnt, que;
 unsigned long flags;
 struct req_que *req;


 spin_lock_irqsave(&ha->hardware_lock, flags);
 for (que = 0; que < ha->max_req_queues; que++) {
  req = ha->req_q_map[que];
  if (!req)
   continue;

  for (cnt = 1; cnt < req->num_outstanding_cmds; cnt++) {
   sp = req->outstanding_cmds[cnt];
   if (sp) {
    if (((sp->type == SRB_CT_CMD) ||
     (sp->type == SRB_ELS_CMD_HST) ||
     (sp->type == SRB_FXIOCB_BCMD))
     && (sp->u.bsg_job == bsg_job)) {
     req->outstanding_cmds[cnt] = ((void*)0);
     spin_unlock_irqrestore(&ha->hardware_lock, flags);
     if (ha->isp_ops->abort_command(sp)) {
      ql_log(ql_log_warn, vha, 0x7089,
          "mbx abort_command "
          "failed.\n");
      bsg_reply->result = -EIO;
     } else {
      ql_dbg(ql_dbg_user, vha, 0x708a,
          "mbx abort_command "
          "success.\n");
      bsg_reply->result = 0;
     }
     spin_lock_irqsave(&ha->hardware_lock, flags);
     goto done;
    }
   }
  }
 }
 spin_unlock_irqrestore(&ha->hardware_lock, flags);
 ql_log(ql_log_info, vha, 0x708b, "SRB not found to abort.\n");
 bsg_reply->result = -ENXIO;
 return 0;

done:
 spin_unlock_irqrestore(&ha->hardware_lock, flags);
 sp->free(sp);
 return 0;
}

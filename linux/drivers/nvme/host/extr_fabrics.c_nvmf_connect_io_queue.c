
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union nvme_result {int u32; } ;
typedef int u16 ;
struct nvmf_connect_data {int hostnqn; int subsysnqn; void* cntlid; int hostid; } ;
struct nvme_ctrl {int connect_q; TYPE_3__* opts; int cntlid; int sqsize; } ;
struct TYPE_4__ {int cattr; void* sqsize; void* qid; int fctype; int opcode; } ;
struct nvme_command {TYPE_1__ connect; } ;
typedef int cmd ;
struct TYPE_6__ {TYPE_2__* host; int subsysnqn; scalar_t__ disable_sqflow; } ;
struct TYPE_5__ {int nqn; int id; } ;


 int BLK_MQ_REQ_NOWAIT ;
 int BLK_MQ_REQ_RESERVED ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NVME_CONNECT_DISABLE_SQFLOW ;
 int NVMF_NQN_SIZE ;
 int __nvme_submit_sync_cmd (int ,struct nvme_command*,union nvme_result*,struct nvmf_connect_data*,int,int ,int ,int,int,int) ;
 void* cpu_to_le16 (int ) ;
 int kfree (struct nvmf_connect_data*) ;
 struct nvmf_connect_data* kzalloc (int,int ) ;
 int le32_to_cpu (int ) ;
 int memset (struct nvme_command*,int ,int) ;
 int nvme_fabrics_command ;
 int nvme_fabrics_type_connect ;
 int nvmf_log_connect_error (struct nvme_ctrl*,int,int ,struct nvme_command*,struct nvmf_connect_data*) ;
 int strncpy (int ,int ,int ) ;
 int uuid_copy (int *,int *) ;

int nvmf_connect_io_queue(struct nvme_ctrl *ctrl, u16 qid, bool poll)
{
 struct nvme_command cmd;
 struct nvmf_connect_data *data;
 union nvme_result res;
 int ret;

 memset(&cmd, 0, sizeof(cmd));
 cmd.connect.opcode = nvme_fabrics_command;
 cmd.connect.fctype = nvme_fabrics_type_connect;
 cmd.connect.qid = cpu_to_le16(qid);
 cmd.connect.sqsize = cpu_to_le16(ctrl->sqsize);

 if (ctrl->opts->disable_sqflow)
  cmd.connect.cattr |= NVME_CONNECT_DISABLE_SQFLOW;

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 uuid_copy(&data->hostid, &ctrl->opts->host->id);
 data->cntlid = cpu_to_le16(ctrl->cntlid);
 strncpy(data->subsysnqn, ctrl->opts->subsysnqn, NVMF_NQN_SIZE);
 strncpy(data->hostnqn, ctrl->opts->host->nqn, NVMF_NQN_SIZE);

 ret = __nvme_submit_sync_cmd(ctrl->connect_q, &cmd, &res,
   data, sizeof(*data), 0, qid, 1,
   BLK_MQ_REQ_RESERVED | BLK_MQ_REQ_NOWAIT, poll);
 if (ret) {
  nvmf_log_connect_error(ctrl, ret, le32_to_cpu(res.u32),
           &cmd, data);
 }
 kfree(data);
 return ret;
}

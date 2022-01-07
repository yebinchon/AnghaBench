
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union nvme_result {int u16; int u32; } ;
struct nvmf_connect_data {int hostnqn; int subsysnqn; void* cntlid; int hostid; } ;
struct nvme_ctrl {int kato; int cntlid; int fabrics_q; TYPE_3__* opts; } ;
struct TYPE_4__ {int cattr; int kato; void* sqsize; scalar_t__ qid; int fctype; int opcode; } ;
struct nvme_command {TYPE_1__ connect; } ;
typedef int cmd ;
struct TYPE_6__ {TYPE_2__* host; int subsysnqn; scalar_t__ disable_sqflow; } ;
struct TYPE_5__ {int nqn; int id; } ;


 int BLK_MQ_REQ_NOWAIT ;
 int BLK_MQ_REQ_RESERVED ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NVME_AQ_DEPTH ;
 int NVME_CONNECT_DISABLE_SQFLOW ;
 int NVME_KATO_GRACE ;
 int NVME_QID_ANY ;
 int NVMF_NQN_SIZE ;
 int __nvme_submit_sync_cmd (int ,struct nvme_command*,union nvme_result*,struct nvmf_connect_data*,int,int ,int ,int,int,int) ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;
 int kfree (struct nvmf_connect_data*) ;
 struct nvmf_connect_data* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int memset (struct nvme_command*,int ,int) ;
 int nvme_fabrics_command ;
 int nvme_fabrics_type_connect ;
 int nvmf_log_connect_error (struct nvme_ctrl*,int,int ,struct nvme_command*,struct nvmf_connect_data*) ;
 int strncpy (int ,int ,int ) ;
 int uuid_copy (int *,int *) ;

int nvmf_connect_admin_queue(struct nvme_ctrl *ctrl)
{
 struct nvme_command cmd;
 union nvme_result res;
 struct nvmf_connect_data *data;
 int ret;

 memset(&cmd, 0, sizeof(cmd));
 cmd.connect.opcode = nvme_fabrics_command;
 cmd.connect.fctype = nvme_fabrics_type_connect;
 cmd.connect.qid = 0;
 cmd.connect.sqsize = cpu_to_le16(NVME_AQ_DEPTH - 1);





 cmd.connect.kato = ctrl->kato ?
  cpu_to_le32((ctrl->kato + NVME_KATO_GRACE) * 1000) : 0;

 if (ctrl->opts->disable_sqflow)
  cmd.connect.cattr |= NVME_CONNECT_DISABLE_SQFLOW;

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 uuid_copy(&data->hostid, &ctrl->opts->host->id);
 data->cntlid = cpu_to_le16(0xffff);
 strncpy(data->subsysnqn, ctrl->opts->subsysnqn, NVMF_NQN_SIZE);
 strncpy(data->hostnqn, ctrl->opts->host->nqn, NVMF_NQN_SIZE);

 ret = __nvme_submit_sync_cmd(ctrl->fabrics_q, &cmd, &res,
   data, sizeof(*data), 0, NVME_QID_ANY, 1,
   BLK_MQ_REQ_RESERVED | BLK_MQ_REQ_NOWAIT, 0);
 if (ret) {
  nvmf_log_connect_error(ctrl, ret, le32_to_cpu(res.u32),
           &cmd, data);
  goto out_free_data;
 }

 ctrl->cntlid = le16_to_cpu(res.u16);

out_free_data:
 kfree(data);
 return ret;
}

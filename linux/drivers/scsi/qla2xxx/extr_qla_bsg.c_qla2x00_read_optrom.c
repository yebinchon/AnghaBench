
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ nic_core_reset_hdlr_active; } ;
struct qla_hw_data {int optrom_mutex; int optrom_state; int * optrom_buffer; int optrom_region_size; int optrom_region_start; TYPE_2__* isp_ops; TYPE_1__ flags; } ;
struct fc_bsg_reply {int reply_payload_rcv_len; int result; } ;
struct TYPE_10__ {int sg_cnt; int sg_list; } ;
struct bsg_job {TYPE_3__ reply_payload; struct fc_bsg_reply* reply; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_11__ {struct qla_hw_data* hw; } ;
typedef TYPE_4__ scsi_qla_host_t ;
struct TYPE_9__ {int (* read_optrom ) (TYPE_4__*,int *,int ,int ) ;} ;


 int DID_OK ;
 int EBUSY ;
 int QLA_SWAITING ;
 int bsg_job_done (struct bsg_job*,int ,int ) ;
 struct Scsi_Host* fc_bsg_to_shost (struct bsg_job*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qla2x00_optrom_setup (struct bsg_job*,TYPE_4__*,int ) ;
 int sg_copy_from_buffer (int ,int ,int *,int ) ;
 TYPE_4__* shost_priv (struct Scsi_Host*) ;
 int stub1 (TYPE_4__*,int *,int ,int ) ;
 int vfree (int *) ;

__attribute__((used)) static int
qla2x00_read_optrom(struct bsg_job *bsg_job)
{
 struct fc_bsg_reply *bsg_reply = bsg_job->reply;
 struct Scsi_Host *host = fc_bsg_to_shost(bsg_job);
 scsi_qla_host_t *vha = shost_priv(host);
 struct qla_hw_data *ha = vha->hw;
 int rval = 0;

 if (ha->flags.nic_core_reset_hdlr_active)
  return -EBUSY;

 mutex_lock(&ha->optrom_mutex);
 rval = qla2x00_optrom_setup(bsg_job, vha, 0);
 if (rval) {
  mutex_unlock(&ha->optrom_mutex);
  return rval;
 }

 ha->isp_ops->read_optrom(vha, ha->optrom_buffer,
     ha->optrom_region_start, ha->optrom_region_size);

 sg_copy_from_buffer(bsg_job->reply_payload.sg_list,
     bsg_job->reply_payload.sg_cnt, ha->optrom_buffer,
     ha->optrom_region_size);

 bsg_reply->reply_payload_rcv_len = ha->optrom_region_size;
 bsg_reply->result = DID_OK;
 vfree(ha->optrom_buffer);
 ha->optrom_buffer = ((void*)0);
 ha->optrom_state = QLA_SWAITING;
 mutex_unlock(&ha->optrom_mutex);
 bsg_job_done(bsg_job, bsg_reply->result,
         bsg_reply->reply_payload_rcv_len);
 return rval;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u64 ;
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct scsi_lun {int dummy; } ;
struct TYPE_9__ {int sess_lock; TYPE_1__* tgt_ops; } ;
struct qla_hw_data {TYPE_3__ tgt; } ;
struct fc_port {scalar_t__ deleted; } ;
struct TYPE_10__ {int task_mgmt_flags; int lun; } ;
struct TYPE_8__ {int s_id; } ;
struct TYPE_11__ {TYPE_4__ fcp_cmnd; TYPE_2__ fcp_hdr; } ;
struct TYPE_12__ {TYPE_5__ isp24; } ;
struct atio_from_isp {TYPE_6__ u; } ;
struct TYPE_7__ {struct fc_port* (* find_sess_by_s_id ) (struct scsi_qla_host*,int ) ;} ;


 int EFAULT ;
 int qlt_issue_task_mgmt (struct fc_port*,int ,int,void*,int ) ;
 int scsilun_to_int (struct scsi_lun*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct fc_port* stub1 (struct scsi_qla_host*,int ) ;

__attribute__((used)) static int qlt_handle_task_mgmt(struct scsi_qla_host *vha, void *iocb)
{
 struct atio_from_isp *a = (struct atio_from_isp *)iocb;
 struct qla_hw_data *ha = vha->hw;
 struct fc_port *sess;
 u64 unpacked_lun;
 int fn;
 unsigned long flags;

 fn = a->u.isp24.fcp_cmnd.task_mgmt_flags;

 spin_lock_irqsave(&ha->tgt.sess_lock, flags);
 sess = ha->tgt.tgt_ops->find_sess_by_s_id(vha,
     a->u.isp24.fcp_hdr.s_id);
 spin_unlock_irqrestore(&ha->tgt.sess_lock, flags);

 unpacked_lun =
     scsilun_to_int((struct scsi_lun *)&a->u.isp24.fcp_cmnd.lun);

 if (sess == ((void*)0) || sess->deleted)
  return -EFAULT;

 return qlt_issue_task_mgmt(sess, unpacked_lun, fn, iocb, 0);
}

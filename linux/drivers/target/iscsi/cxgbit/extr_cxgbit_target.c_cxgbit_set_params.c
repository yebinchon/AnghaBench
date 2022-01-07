
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


typedef int u8 ;
struct iscsi_param {int value; } ;
struct iscsi_conn_ops {scalar_t__ MaxRecvDataSegmentLength; } ;
struct iscsi_conn {TYPE_3__* sess; int param_list; TYPE_1__* login; struct iscsi_conn_ops* conn_ops; struct cxgbit_sock* context; } ;
struct TYPE_12__ {int flags; struct cxgbit_device* cdev; } ;
struct cxgbit_sock {TYPE_6__ com; } ;
struct TYPE_10__ {int adapter_type; struct cxgbi_ppm** iscsi_ppm; } ;
struct cxgbit_device {scalar_t__ mdsl; int flags; TYPE_4__ lldi; } ;
struct TYPE_11__ {int pgsz_idx_dflt; } ;
struct cxgbi_ppm {TYPE_5__ tformat; } ;
struct TYPE_9__ {TYPE_2__* sess_ops; } ;
struct TYPE_8__ {int ErrorRecoveryLevel; } ;
struct TYPE_7__ {scalar_t__ leading_connection; } ;


 int CDEV_DDP_ENABLE ;
 int CDEV_ISO_ENABLE ;
 int CSK_DDP_ENABLE ;
 int ERRORRECOVERYLEVEL ;
 int cxgbit_seq_pdu_inorder (struct cxgbit_sock*) ;
 scalar_t__ cxgbit_set_digest (struct cxgbit_sock*) ;
 scalar_t__ cxgbit_set_iso_npdu (struct cxgbit_sock*) ;
 scalar_t__ cxgbit_setup_conn_pgidx (struct cxgbit_sock*,int ) ;
 scalar_t__ is_t5 (int ) ;
 struct iscsi_param* iscsi_find_param_from_key (int ,int ) ;
 scalar_t__ kstrtou8 (int ,int ,int *) ;
 int pr_err (char*,int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int cxgbit_set_params(struct iscsi_conn *conn)
{
 struct cxgbit_sock *csk = conn->context;
 struct cxgbit_device *cdev = csk->com.cdev;
 struct cxgbi_ppm *ppm = *csk->com.cdev->lldi.iscsi_ppm;
 struct iscsi_conn_ops *conn_ops = conn->conn_ops;
 struct iscsi_param *param;
 u8 erl;

 if (conn_ops->MaxRecvDataSegmentLength > cdev->mdsl)
  conn_ops->MaxRecvDataSegmentLength = cdev->mdsl;

 if (cxgbit_set_digest(csk))
  return -1;

 if (conn->login->leading_connection) {
  param = iscsi_find_param_from_key(ERRORRECOVERYLEVEL,
        conn->param_list);
  if (!param) {
   pr_err("param not found key %s\n", ERRORRECOVERYLEVEL);
   return -1;
  }
  if (kstrtou8(param->value, 0, &erl) < 0)
   return -1;
 } else {
  erl = conn->sess->sess_ops->ErrorRecoveryLevel;
 }

 if (!erl) {
  int ret;

  ret = cxgbit_seq_pdu_inorder(csk);
  if (ret < 0) {
   return -1;
  } else if (ret > 0) {
   if (is_t5(cdev->lldi.adapter_type))
    goto enable_ddp;
   else
    return 0;
  }

  if (test_bit(CDEV_ISO_ENABLE, &cdev->flags)) {
   if (cxgbit_set_iso_npdu(csk))
    return -1;
  }

enable_ddp:
  if (test_bit(CDEV_DDP_ENABLE, &cdev->flags)) {
   if (cxgbit_setup_conn_pgidx(csk,
          ppm->tformat.pgsz_idx_dflt))
    return -1;
   set_bit(CSK_DDP_ENABLE, &csk->com.flags);
  }
 }

 return 0;
}

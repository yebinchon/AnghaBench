
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct iscsi_param {int value; } ;
struct iscsi_conn_ops {int MaxRecvDataSegmentLength; } ;
struct iscsi_conn {TYPE_3__* sess; int param_list; TYPE_1__* login; struct iscsi_conn_ops* conn_ops; } ;
struct cxgbit_sock {size_t submode; int max_iso_npdu; int emss; struct iscsi_conn* conn; } ;
struct TYPE_6__ {TYPE_2__* sess_ops; } ;
struct TYPE_5__ {int MaxBurstLength; } ;
struct TYPE_4__ {scalar_t__ leading_connection; } ;


 int CXGBIT_MAX_ISO_PAYLOAD ;
 int ISCSI_HDR_LEN ;
 int MAXBURSTLENGTH ;
 int* cxgbit_digest_len ;
 struct iscsi_param* iscsi_find_param_from_key (int ,int ) ;
 scalar_t__ kstrtou32 (int ,int ,int*) ;
 int min (int,int) ;
 int pr_err (char*,int ) ;
 int rounddown (int ,int ) ;

__attribute__((used)) static int cxgbit_set_iso_npdu(struct cxgbit_sock *csk)
{
 struct iscsi_conn *conn = csk->conn;
 struct iscsi_conn_ops *conn_ops = conn->conn_ops;
 struct iscsi_param *param;
 u32 mrdsl, mbl;
 u32 max_npdu, max_iso_npdu;
 u32 max_iso_payload;

 if (conn->login->leading_connection) {
  param = iscsi_find_param_from_key(MAXBURSTLENGTH,
        conn->param_list);
  if (!param) {
   pr_err("param not found key %s\n", MAXBURSTLENGTH);
   return -1;
  }

  if (kstrtou32(param->value, 0, &mbl) < 0)
   return -1;
 } else {
  mbl = conn->sess->sess_ops->MaxBurstLength;
 }

 mrdsl = conn_ops->MaxRecvDataSegmentLength;
 max_npdu = mbl / mrdsl;

 max_iso_payload = rounddown(CXGBIT_MAX_ISO_PAYLOAD, csk->emss);

 max_iso_npdu = max_iso_payload /
         (ISCSI_HDR_LEN + mrdsl +
   cxgbit_digest_len[csk->submode]);

 csk->max_iso_npdu = min(max_npdu, max_iso_npdu);

 if (csk->max_iso_npdu <= 1)
  csk->max_iso_npdu = 0;

 return 0;
}

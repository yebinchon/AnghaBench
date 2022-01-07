
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iscsi_param {int value; } ;
struct iscsi_conn {TYPE_2__* sess; int param_list; TYPE_3__* login; } ;
struct cxgbit_sock {struct iscsi_conn* conn; } ;
struct TYPE_6__ {scalar_t__ leading_connection; } ;
struct TYPE_5__ {TYPE_1__* sess_ops; } ;
struct TYPE_4__ {int DataPDUInOrder; int DataSequenceInOrder; } ;


 int DATAPDUINORDER ;
 int DATASEQUENCEINORDER ;
 int YES ;
 struct iscsi_param* iscsi_find_param_from_key (int ,int ) ;
 int pr_err (char*,int ) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int cxgbit_seq_pdu_inorder(struct cxgbit_sock *csk)
{
 struct iscsi_conn *conn = csk->conn;
 struct iscsi_param *param;

 if (conn->login->leading_connection) {
  param = iscsi_find_param_from_key(DATASEQUENCEINORDER,
        conn->param_list);
  if (!param) {
   pr_err("param not found key %s\n", DATASEQUENCEINORDER);
   return -1;
  }

  if (strcmp(param->value, YES))
   return 1;

  param = iscsi_find_param_from_key(DATAPDUINORDER,
        conn->param_list);
  if (!param) {
   pr_err("param not found key %s\n", DATAPDUINORDER);
   return -1;
  }

  if (strcmp(param->value, YES))
   return 1;

 } else {
  if (!conn->sess->sess_ops->DataSequenceInOrder)
   return 1;
  if (!conn->sess->sess_ops->DataPDUInOrder)
   return 1;
 }

 return 0;
}

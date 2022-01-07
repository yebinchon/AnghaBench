
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_param {int value; } ;
struct iscsi_conn {int param_list; } ;
struct cxgbit_sock {int submode; struct iscsi_conn* conn; } ;


 int CRC32C ;
 int CXGBIT_SUBMODE_DCRC ;
 int CXGBIT_SUBMODE_HCRC ;
 int DATADIGEST ;
 int HEADERDIGEST ;
 scalar_t__ cxgbit_setup_conn_digest (struct cxgbit_sock*) ;
 struct iscsi_param* iscsi_find_param_from_key (int ,int ) ;
 int pr_err (char*,int ) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int cxgbit_set_digest(struct cxgbit_sock *csk)
{
 struct iscsi_conn *conn = csk->conn;
 struct iscsi_param *param;

 param = iscsi_find_param_from_key(HEADERDIGEST, conn->param_list);
 if (!param) {
  pr_err("param not found key %s\n", HEADERDIGEST);
  return -1;
 }

 if (!strcmp(param->value, CRC32C))
  csk->submode |= CXGBIT_SUBMODE_HCRC;

 param = iscsi_find_param_from_key(DATADIGEST, conn->param_list);
 if (!param) {
  csk->submode = 0;
  pr_err("param not found key %s\n", DATADIGEST);
  return -1;
 }

 if (!strcmp(param->value, CRC32C))
  csk->submode |= CXGBIT_SUBMODE_DCRC;

 if (cxgbit_setup_conn_digest(csk)) {
  csk->submode = 0;
  return -1;
 }

 return 0;
}

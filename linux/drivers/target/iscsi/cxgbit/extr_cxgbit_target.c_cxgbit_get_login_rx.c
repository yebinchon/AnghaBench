
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_login {int dummy; } ;
struct iscsi_conn {struct cxgbit_sock* context; } ;
struct TYPE_2__ {int flags; } ;
struct cxgbit_sock {TYPE_1__ com; } ;


 int CSK_LOGIN_PDU_DONE ;
 int clear_bit (int ,int *) ;
 int cxgbit_wait_rxq (struct cxgbit_sock*) ;
 int test_and_clear_bit (int ,int *) ;

int cxgbit_get_login_rx(struct iscsi_conn *conn, struct iscsi_login *login)
{
 struct cxgbit_sock *csk = conn->context;
 int ret = -1;

 while (!test_and_clear_bit(CSK_LOGIN_PDU_DONE, &csk->com.flags)) {
  ret = cxgbit_wait_rxq(csk);
  if (ret) {
   clear_bit(CSK_LOGIN_PDU_DONE, &csk->com.flags);
   break;
  }
 }

 return ret;
}

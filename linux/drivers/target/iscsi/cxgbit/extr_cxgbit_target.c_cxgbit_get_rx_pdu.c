
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_conn {struct cxgbit_sock* context; } ;
struct cxgbit_sock {int dummy; } ;


 int current ;
 scalar_t__ cxgbit_wait_rxq (struct cxgbit_sock*) ;
 int iscsit_thread_check_cpumask (struct iscsi_conn*,int ,int ) ;
 int kthread_should_stop () ;

void cxgbit_get_rx_pdu(struct iscsi_conn *conn)
{
 struct cxgbit_sock *csk = conn->context;

 while (!kthread_should_stop()) {
  iscsit_thread_check_cpumask(conn, current, 0);
  if (cxgbit_wait_rxq(csk))
   return;
 }
}

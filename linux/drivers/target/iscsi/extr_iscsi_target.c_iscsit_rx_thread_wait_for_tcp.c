
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iscsi_conn {int rx_half_close_comp; TYPE_2__* sock; } ;
struct TYPE_4__ {TYPE_1__* sk; } ;
struct TYPE_3__ {int sk_shutdown; } ;


 int HZ ;
 int ISCSI_RX_THREAD_TCP_TIMEOUT ;
 int RCV_SHUTDOWN ;
 int SEND_SHUTDOWN ;
 int wait_for_completion_interruptible_timeout (int *,int) ;

__attribute__((used)) static void iscsit_rx_thread_wait_for_tcp(struct iscsi_conn *conn)
{
 if ((conn->sock->sk->sk_shutdown & SEND_SHUTDOWN) ||
     (conn->sock->sk->sk_shutdown & RCV_SHUTDOWN)) {
  wait_for_completion_interruptible_timeout(
     &conn->rx_half_close_comp,
     ISCSI_RX_THREAD_TCP_TIMEOUT * HZ);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ref_cnt; TYPE_1__* sock; } ;
struct TYPE_3__ {int sk_socket; } ;


 TYPE_2__ lte_event ;
 int sock_release (int ) ;

void gdm_lte_event_exit(void)
{
 if (lte_event.sock && --lte_event.ref_cnt == 0) {
  sock_release(lte_event.sock->sk_socket);
  lte_event.sock = ((void*)0);
 }
}

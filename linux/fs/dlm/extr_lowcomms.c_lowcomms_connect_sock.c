
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int swork; int flags; } ;


 int CF_CLOSE ;
 int cond_resched () ;
 int queue_work (int ,int *) ;
 int send_workqueue ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline void lowcomms_connect_sock(struct connection *con)
{
 if (test_bit(CF_CLOSE, &con->flags))
  return;
 queue_work(send_workqueue, &con->swork);
 cond_resched();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_state; int sk_callback_lock; struct nvmet_tcp_queue* sk_user_data; } ;
struct nvmet_tcp_queue {int idx; } ;





 int nvmet_tcp_schedule_release_queue (struct nvmet_tcp_queue*) ;
 int pr_warn (char*,int ,int) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void nvmet_tcp_state_change(struct sock *sk)
{
 struct nvmet_tcp_queue *queue;

 write_lock_bh(&sk->sk_callback_lock);
 queue = sk->sk_user_data;
 if (!queue)
  goto done;

 switch (sk->sk_state) {
 case 128:
 case 129:
 case 130:

  sk->sk_user_data = ((void*)0);
  nvmet_tcp_schedule_release_queue(queue);
  break;
 default:
  pr_warn("queue %d unhandled state %d\n",
   queue->idx, sk->sk_state);
 }
done:
 write_unlock_bh(&sk->sk_callback_lock);
}

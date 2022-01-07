
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_state; int sk_callback_lock; struct nvme_tcp_queue* sk_user_data; } ;
struct nvme_tcp_queue {int (* state_change ) (struct sock*) ;TYPE_1__* ctrl; } ;
struct TYPE_4__ {int device; } ;
struct TYPE_3__ {TYPE_2__ ctrl; } ;







 int dev_info (int ,char*,int ,int) ;
 int nvme_tcp_error_recovery (TYPE_2__*) ;
 int nvme_tcp_queue_id (struct nvme_tcp_queue*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void nvme_tcp_state_change(struct sock *sk)
{
 struct nvme_tcp_queue *queue;

 read_lock(&sk->sk_callback_lock);
 queue = sk->sk_user_data;
 if (!queue)
  goto done;

 switch (sk->sk_state) {
 case 132:
 case 131:
 case 128:
 case 130:
 case 129:

  nvme_tcp_error_recovery(&queue->ctrl->ctrl);
  break;
 default:
  dev_info(queue->ctrl->ctrl.device,
   "queue %d socket state %d\n",
   nvme_tcp_queue_id(queue), sk->sk_state);
 }

 queue->state_change(sk);
done:
 read_unlock(&sk->sk_callback_lock);
}

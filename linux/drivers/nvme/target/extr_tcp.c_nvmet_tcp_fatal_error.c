
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ctrl; } ;
struct nvmet_tcp_queue {int sock; TYPE_1__ nvme_sq; int rcv_state; } ;


 int NVMET_TCP_RECV_ERR ;
 int SHUT_RDWR ;
 int kernel_sock_shutdown (int ,int ) ;
 int nvmet_ctrl_fatal_error (scalar_t__) ;

__attribute__((used)) static void nvmet_tcp_fatal_error(struct nvmet_tcp_queue *queue)
{
 queue->rcv_state = NVMET_TCP_RECV_ERR;
 if (queue->nvme_sq.ctrl)
  nvmet_ctrl_fatal_error(queue->nvme_sq.ctrl);
 else
  kernel_sock_shutdown(queue->sock, SHUT_RDWR);
}

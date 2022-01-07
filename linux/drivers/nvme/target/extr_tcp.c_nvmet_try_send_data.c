
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct page {int dummy; } ;
struct TYPE_6__ {scalar_t__ sqhd_disabled; } ;
struct nvmet_tcp_queue {TYPE_1__ nvme_sq; int * snd_cmd; scalar_t__ data_digest; int sock; } ;
struct TYPE_7__ {int sg; } ;
struct nvmet_tcp_cmd {int offset; int wbytes_done; TYPE_2__ req; int iov; struct nvmet_tcp_queue* queue; int state; TYPE_3__* cur_sg; } ;
struct TYPE_8__ {int length; } ;


 int MSG_DONTWAIT ;
 int MSG_MORE ;
 int NVMET_TCP_SEND_DDGST ;
 int kernel_sendpage (int ,struct page*,int,int,int) ;
 int kfree (int ) ;
 int nvmet_setup_response_pdu (struct nvmet_tcp_cmd*) ;
 int nvmet_tcp_put_cmd (struct nvmet_tcp_cmd*) ;
 TYPE_3__* sg_next (TYPE_3__*) ;
 struct page* sg_page (TYPE_3__*) ;
 int sgl_free (int ) ;

__attribute__((used)) static int nvmet_try_send_data(struct nvmet_tcp_cmd *cmd)
{
 struct nvmet_tcp_queue *queue = cmd->queue;
 int ret;

 while (cmd->cur_sg) {
  struct page *page = sg_page(cmd->cur_sg);
  u32 left = cmd->cur_sg->length - cmd->offset;

  ret = kernel_sendpage(cmd->queue->sock, page, cmd->offset,
     left, MSG_DONTWAIT | MSG_MORE);
  if (ret <= 0)
   return ret;

  cmd->offset += ret;
  cmd->wbytes_done += ret;


  if (cmd->offset == cmd->cur_sg->length) {
   cmd->cur_sg = sg_next(cmd->cur_sg);
   cmd->offset = 0;
  }
 }

 if (queue->data_digest) {
  cmd->state = NVMET_TCP_SEND_DDGST;
  cmd->offset = 0;
 } else {
  if (queue->nvme_sq.sqhd_disabled) {
   cmd->queue->snd_cmd = ((void*)0);
   nvmet_tcp_put_cmd(cmd);
  } else {
   nvmet_setup_response_pdu(cmd);
  }
 }

 if (queue->nvme_sq.sqhd_disabled) {
  kfree(cmd->iov);
  sgl_free(cmd->req.sg);
 }

 return 1;

}

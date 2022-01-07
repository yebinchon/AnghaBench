
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbhs_pkt {TYPE_1__* handler; struct usbhs_pipe* pipe; } ;
struct usbhs_pipe {int dummy; } ;
struct TYPE_2__ {int (* prepare ) (struct usbhs_pkt*,int*) ;} ;


 int stub1 (struct usbhs_pkt*,int*) ;
 TYPE_1__ usbhs_fifo_pio_push_handler ;
 int usbhs_pipe_sequence_data1 (struct usbhs_pipe*) ;

__attribute__((used)) static int usbhsf_dcp_data_stage_try_push(struct usbhs_pkt *pkt, int *is_done)
{
 struct usbhs_pipe *pipe = pkt->pipe;

 usbhs_pipe_sequence_data1(pipe);




 pkt->handler = &usbhs_fifo_pio_push_handler;

 return pkt->handler->prepare(pkt, is_done);
}

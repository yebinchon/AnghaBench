
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_pipe {int dummy; } ;


 int BFRE ;
 int usbhs_pipe_clear (struct usbhs_pipe*) ;
 int usbhs_pipe_data_sequence (struct usbhs_pipe*,int) ;
 int usbhs_pipe_get_data_sequence (struct usbhs_pipe*) ;
 int usbhsp_pipe_cfg_set (struct usbhs_pipe*,int ,int ) ;
 int usbhsp_pipe_select (struct usbhs_pipe*) ;

void usbhs_pipe_clear_without_sequence(struct usbhs_pipe *pipe,
           int needs_bfre, int bfre_enable)
{
 int sequence;

 usbhsp_pipe_select(pipe);
 sequence = usbhs_pipe_get_data_sequence(pipe);
 if (needs_bfre)
  usbhsp_pipe_cfg_set(pipe, BFRE, bfre_enable ? BFRE : 0);
 usbhs_pipe_clear(pipe);
 usbhs_pipe_data_sequence(pipe, sequence);
}

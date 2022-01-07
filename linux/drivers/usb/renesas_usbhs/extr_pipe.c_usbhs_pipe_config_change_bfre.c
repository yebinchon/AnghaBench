
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_pipe {int dummy; } ;


 int BFRE ;
 int usbhs_pipe_clear_without_sequence (struct usbhs_pipe*,int,int) ;
 scalar_t__ usbhs_pipe_is_dcp (struct usbhs_pipe*) ;
 int usbhsp_pipe_cfg_get (struct usbhs_pipe*) ;
 int usbhsp_pipe_select (struct usbhs_pipe*) ;

void usbhs_pipe_config_change_bfre(struct usbhs_pipe *pipe, int enable)
{
 if (usbhs_pipe_is_dcp(pipe))
  return;

 usbhsp_pipe_select(pipe);

 if (!(enable ^ !!(usbhsp_pipe_cfg_get(pipe) & BFRE)))
  return;

 usbhs_pipe_clear_without_sequence(pipe, 1, enable);
}

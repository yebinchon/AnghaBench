
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_pipe {int dummy; } ;


 int ACLRM ;
 int usbhs_fifo_clear_dcp (struct usbhs_pipe*) ;
 scalar_t__ usbhs_pipe_is_dcp (struct usbhs_pipe*) ;
 int usbhsp_pipectrl_set (struct usbhs_pipe*,int ,int ) ;

void usbhs_pipe_clear(struct usbhs_pipe *pipe)
{
 if (usbhs_pipe_is_dcp(pipe)) {
  usbhs_fifo_clear_dcp(pipe);
 } else {
  usbhsp_pipectrl_set(pipe, ACLRM, ACLRM);
  usbhsp_pipectrl_set(pipe, ACLRM, 0);
 }
}

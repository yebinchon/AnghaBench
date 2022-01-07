
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_pipe {int dummy; } ;


 int DIR_OUT ;
 int usbhsp_pipe_cfg_set (struct usbhs_pipe*,int ,int ) ;

void usbhs_dcp_dir_for_host(struct usbhs_pipe *pipe, int dir_out)
{
 usbhsp_pipe_cfg_set(pipe, DIR_OUT,
       dir_out ? DIR_OUT : 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_pipe {int dummy; } ;


 size_t usbhs_pipe_type (struct usbhs_pipe*) ;
 char** usbhsp_pipe_name ;

char *usbhs_pipe_name(struct usbhs_pipe *pipe)
{
 return usbhsp_pipe_name[usbhs_pipe_type(pipe)];
}

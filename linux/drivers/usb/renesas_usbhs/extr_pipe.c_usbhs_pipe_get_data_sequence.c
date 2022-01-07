
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_pipe {int dummy; } ;


 int SQMON ;
 int usbhsp_pipectrl_get (struct usbhs_pipe*) ;

__attribute__((used)) static int usbhs_pipe_get_data_sequence(struct usbhs_pipe *pipe)
{
 return !!(usbhsp_pipectrl_get(pipe) & SQMON);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbhs_pipe {int dummy; } ;


 int INBUFM ;
 scalar_t__ usbhs_pipe_is_dcp (struct usbhs_pipe*) ;
 int usbhsp_pipectrl_get (struct usbhs_pipe*) ;

bool usbhs_pipe_contains_transmittable_data(struct usbhs_pipe *pipe)
{
 u16 val;


 if (usbhs_pipe_is_dcp(pipe))
  return 0;

 val = usbhsp_pipectrl_get(pipe);
 if (val & INBUFM)
  return 1;

 return 0;
}

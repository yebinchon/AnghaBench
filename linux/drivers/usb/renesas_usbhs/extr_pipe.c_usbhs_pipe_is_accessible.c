
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbhs_pipe {int dummy; } ;


 int BSTS ;
 int EBUSY ;
 int usbhsp_pipectrl_get (struct usbhs_pipe*) ;

int usbhs_pipe_is_accessible(struct usbhs_pipe *pipe)
{
 u16 val;

 val = usbhsp_pipectrl_get(pipe);
 if (val & BSTS)
  return 0;

 return -EBUSY;
}

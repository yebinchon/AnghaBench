
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbhs_pipe {int dummy; } ;


 int PIPEBUF ;
 int __usbhsp_pipe_xxx_set (struct usbhs_pipe*,int ,int ,int ,int ) ;
 scalar_t__ usbhs_pipe_is_dcp (struct usbhs_pipe*) ;

__attribute__((used)) static void usbhsp_pipe_buf_set(struct usbhs_pipe *pipe, u16 mask, u16 val)
{
 if (usbhs_pipe_is_dcp(pipe))
  return;

 __usbhsp_pipe_xxx_set(pipe, 0, PIPEBUF, mask, val);
}

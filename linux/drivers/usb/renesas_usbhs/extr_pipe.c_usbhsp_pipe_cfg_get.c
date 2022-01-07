
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbhs_pipe {int dummy; } ;


 int DCPCFG ;
 int PIPECFG ;
 int __usbhsp_pipe_xxx_get (struct usbhs_pipe*,int ,int ) ;

__attribute__((used)) static u16 usbhsp_pipe_cfg_get(struct usbhs_pipe *pipe)
{
 return __usbhsp_pipe_xxx_get(pipe, DCPCFG, PIPECFG);
}

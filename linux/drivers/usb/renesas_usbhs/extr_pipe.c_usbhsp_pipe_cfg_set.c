
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbhs_pipe {int dummy; } ;


 int DCPCFG ;
 int PIPECFG ;
 int __usbhsp_pipe_xxx_set (struct usbhs_pipe*,int ,int ,int ,int ) ;

__attribute__((used)) static void usbhsp_pipe_cfg_set(struct usbhs_pipe *pipe, u16 mask, u16 val)
{
 __usbhsp_pipe_xxx_set(pipe, DCPCFG, PIPECFG, mask, val);
}

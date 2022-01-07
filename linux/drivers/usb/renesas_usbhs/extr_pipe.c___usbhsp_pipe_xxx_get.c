
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbhs_priv {int dummy; } ;
struct usbhs_pipe {int dummy; } ;


 scalar_t__ usbhs_pipe_is_dcp (struct usbhs_pipe*) ;
 struct usbhs_priv* usbhs_pipe_to_priv (struct usbhs_pipe*) ;
 int usbhs_read (struct usbhs_priv*,int ) ;

__attribute__((used)) static u16 __usbhsp_pipe_xxx_get(struct usbhs_pipe *pipe,
     u16 dcp_reg, u16 pipe_reg)
{
 struct usbhs_priv *priv = usbhs_pipe_to_priv(pipe);

 if (usbhs_pipe_is_dcp(pipe))
  return usbhs_read(priv, dcp_reg);
 else
  return usbhs_read(priv, pipe_reg);
}

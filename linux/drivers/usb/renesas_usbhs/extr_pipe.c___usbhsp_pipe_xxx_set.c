
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbhs_priv {int dummy; } ;
struct usbhs_pipe {int dummy; } ;


 int usbhs_bset (struct usbhs_priv*,int ,int ,int ) ;
 scalar_t__ usbhs_pipe_is_dcp (struct usbhs_pipe*) ;
 struct usbhs_priv* usbhs_pipe_to_priv (struct usbhs_pipe*) ;

__attribute__((used)) static void __usbhsp_pipe_xxx_set(struct usbhs_pipe *pipe,
      u16 dcp_reg, u16 pipe_reg,
      u16 mask, u16 val)
{
 struct usbhs_priv *priv = usbhs_pipe_to_priv(pipe);

 if (usbhs_pipe_is_dcp(pipe))
  usbhs_bset(priv, dcp_reg, mask, val);
 else
  usbhs_bset(priv, pipe_reg, mask, val);
}

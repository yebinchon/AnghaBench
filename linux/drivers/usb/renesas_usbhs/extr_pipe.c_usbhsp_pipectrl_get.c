
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbhs_priv {int dummy; } ;
struct usbhs_pipe {int dummy; } ;


 scalar_t__ DCPCTR ;
 scalar_t__ PIPEnCTR ;
 scalar_t__ usbhs_pipe_is_dcp (struct usbhs_pipe*) ;
 struct usbhs_priv* usbhs_pipe_to_priv (struct usbhs_pipe*) ;
 int usbhs_read (struct usbhs_priv*,scalar_t__) ;
 int usbhsp_addr_offset (struct usbhs_pipe*) ;

__attribute__((used)) static u16 usbhsp_pipectrl_get(struct usbhs_pipe *pipe)
{
 struct usbhs_priv *priv = usbhs_pipe_to_priv(pipe);
 int offset = usbhsp_addr_offset(pipe);

 if (usbhs_pipe_is_dcp(pipe))
  return usbhs_read(priv, DCPCTR);
 else
  return usbhs_read(priv, PIPEnCTR + offset);
}

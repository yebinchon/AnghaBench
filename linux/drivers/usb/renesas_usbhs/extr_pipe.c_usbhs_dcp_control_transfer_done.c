
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;
struct usbhs_pipe {int dummy; } ;


 int CCPL ;
 int WARN_ON (int) ;
 int usbhs_mod_is_host (struct usbhs_priv*) ;
 int usbhs_pipe_enable (struct usbhs_pipe*) ;
 int usbhs_pipe_is_dcp (struct usbhs_pipe*) ;
 struct usbhs_priv* usbhs_pipe_to_priv (struct usbhs_pipe*) ;
 int usbhsp_pipectrl_set (struct usbhs_pipe*,int ,int ) ;

void usbhs_dcp_control_transfer_done(struct usbhs_pipe *pipe)
{
 struct usbhs_priv *priv = usbhs_pipe_to_priv(pipe);

 WARN_ON(!usbhs_pipe_is_dcp(pipe));

 usbhs_pipe_enable(pipe);

 if (!usbhs_mod_is_host(priv))
  usbhsp_pipectrl_set(pipe, CCPL, CCPL);
}

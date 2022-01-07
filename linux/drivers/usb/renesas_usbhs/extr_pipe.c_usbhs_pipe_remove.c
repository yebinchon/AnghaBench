
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;
struct usbhs_pipe_info {int pipe; } ;


 int kfree (int ) ;
 struct usbhs_pipe_info* usbhs_priv_to_pipeinfo (struct usbhs_priv*) ;

void usbhs_pipe_remove(struct usbhs_priv *priv)
{
 struct usbhs_pipe_info *info = usbhs_priv_to_pipeinfo(priv);

 kfree(info->pipe);
}

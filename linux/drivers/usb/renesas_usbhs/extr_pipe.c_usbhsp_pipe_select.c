
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;
struct usbhs_pipe {int dummy; } ;


 int PIPESEL ;
 int usbhs_pipe_number (struct usbhs_pipe*) ;
 struct usbhs_priv* usbhs_pipe_to_priv (struct usbhs_pipe*) ;
 int usbhs_write (struct usbhs_priv*,int ,int) ;

__attribute__((used)) static void usbhsp_pipe_select(struct usbhs_pipe *pipe)
{
 struct usbhs_priv *priv = usbhs_pipe_to_priv(pipe);
 usbhs_write(priv, PIPESEL, 0xF & usbhs_pipe_number(pipe));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;
struct renesas_usbhs_driver_pipe_config {int dummy; } ;


 struct renesas_usbhs_driver_pipe_config* pipe_configs ;
 struct renesas_usbhs_driver_pipe_config* usbhs_get_dparam (struct usbhs_priv*,int ) ;

__attribute__((used)) static struct renesas_usbhs_driver_pipe_config
*usbhsp_get_pipe_config(struct usbhs_priv *priv, int pipe_num)
{
 struct renesas_usbhs_driver_pipe_config *pipe_configs =
     usbhs_get_dparam(priv, pipe_configs);

 return &pipe_configs[pipe_num];
}

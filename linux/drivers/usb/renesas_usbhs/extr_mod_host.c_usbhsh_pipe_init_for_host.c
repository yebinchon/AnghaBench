
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct usbhs_pipe* usbhsh_hpriv_to_dcp ;
struct usbhsh_hpriv {int dummy; } ;
struct usbhs_priv {int dummy; } ;
struct usbhs_pipe {int * mod_private; } ;
struct renesas_usbhs_driver_pipe_config {int type; } ;


 int USB_ENDPOINT_XFER_CONTROL ;
 struct renesas_usbhs_driver_pipe_config* pipe_configs ;
 int pipe_size ;
 struct usbhs_pipe* usbhs_dcp_malloc (struct usbhs_priv*) ;
 struct renesas_usbhs_driver_pipe_config* usbhs_get_dparam (struct usbhs_priv*,int ) ;
 struct usbhs_pipe* usbhs_pipe_malloc (struct usbhs_priv*,int,int) ;
 struct usbhsh_hpriv* usbhsh_priv_to_hpriv (struct usbhs_priv*) ;

__attribute__((used)) static void usbhsh_pipe_init_for_host(struct usbhs_priv *priv)
{
 struct usbhsh_hpriv *hpriv = usbhsh_priv_to_hpriv(priv);
 struct usbhs_pipe *pipe;
 struct renesas_usbhs_driver_pipe_config *pipe_configs =
     usbhs_get_dparam(priv, pipe_configs);
 int pipe_size = usbhs_get_dparam(priv, pipe_size);
 int old_type, dir_in, i;


 old_type = USB_ENDPOINT_XFER_CONTROL;
 for (i = 0; i < pipe_size; i++) {
  dir_in = (pipe_configs[i].type == old_type);
  old_type = pipe_configs[i].type;

  if (USB_ENDPOINT_XFER_CONTROL == pipe_configs[i].type) {
   pipe = usbhs_dcp_malloc(priv);
   usbhsh_hpriv_to_dcp(hpriv) = pipe;
  } else {
   pipe = usbhs_pipe_malloc(priv,
       pipe_configs[i].type,
       dir_in);
  }

  pipe->mod_private = ((void*)0);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;
struct usbhs_pipe {int list; } ;


 int INIT_LIST_HEAD (int *) ;
 int USB_ENDPOINT_XFER_CONTROL ;
 struct usbhs_pipe* usbhsp_get_pipe (struct usbhs_priv*,int ) ;

struct usbhs_pipe *usbhs_dcp_malloc(struct usbhs_priv *priv)
{
 struct usbhs_pipe *pipe;

 pipe = usbhsp_get_pipe(priv, USB_ENDPOINT_XFER_CONTROL);
 if (!pipe)
  return ((void*)0);

 INIT_LIST_HEAD(&pipe->list);





 return pipe;
}

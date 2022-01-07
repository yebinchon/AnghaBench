
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbhsh_hpriv {int dummy; } ;
struct usbhs_priv {int dummy; } ;
struct usbhs_mod {int irq_sign; int irq_sack; int irq_dtch; int irq_attch; } ;
struct TYPE_2__ {int controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct device {int dummy; } ;


 int dev_dbg (struct device*,char*) ;
 int device_wakeup_enable (int ) ;
 int usb_add_hcd (struct usb_hcd*,int ,int ) ;
 int usbhs_fifo_init (struct usbhs_priv*) ;
 int usbhs_irq_callback_update (struct usbhs_priv*,struct usbhs_mod*) ;
 struct usbhs_mod* usbhs_mod_get_current (struct usbhs_priv*) ;
 int usbhs_pipe_init (struct usbhs_priv*,int ) ;
 struct device* usbhs_priv_to_dev (struct usbhs_priv*) ;
 int usbhs_sys_host_ctrl (struct usbhs_priv*,int) ;
 int usbhsh_dma_map_ctrl ;
 struct usb_hcd* usbhsh_hpriv_to_hcd (struct usbhsh_hpriv*) ;
 int usbhsh_irq_attch ;
 int usbhsh_irq_dtch ;
 int usbhsh_irq_setup_ack ;
 int usbhsh_irq_setup_err ;
 int usbhsh_pipe_init_for_host (struct usbhs_priv*) ;
 struct usbhsh_hpriv* usbhsh_priv_to_hpriv (struct usbhs_priv*) ;

__attribute__((used)) static int usbhsh_start(struct usbhs_priv *priv)
{
 struct usbhsh_hpriv *hpriv = usbhsh_priv_to_hpriv(priv);
 struct usb_hcd *hcd = usbhsh_hpriv_to_hcd(hpriv);
 struct usbhs_mod *mod = usbhs_mod_get_current(priv);
 struct device *dev = usbhs_priv_to_dev(priv);
 int ret;


 ret = usb_add_hcd(hcd, 0, 0);
 if (ret < 0)
  return 0;
 device_wakeup_enable(hcd->self.controller);




 usbhs_fifo_init(priv);
 usbhs_pipe_init(priv,
   usbhsh_dma_map_ctrl);
 usbhsh_pipe_init_for_host(priv);







 usbhs_sys_host_ctrl(priv, 1);




 mod->irq_attch = usbhsh_irq_attch;
 mod->irq_dtch = usbhsh_irq_dtch;
 mod->irq_sack = usbhsh_irq_setup_ack;
 mod->irq_sign = usbhsh_irq_setup_err;
 usbhs_irq_callback_update(priv, mod);

 dev_dbg(dev, "start host\n");

 return ret;
}

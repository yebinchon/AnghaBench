
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq_attch; } ;
struct usbhsh_hpriv {TYPE_1__ mod; } ;
struct usbhs_priv {int dummy; } ;
struct usbhs_irq_state {int dummy; } ;
struct device {int dummy; } ;


 int USB_PORT_STAT_CONNECTION ;
 int USB_PORT_STAT_C_CONNECTION ;
 int dev_dbg (struct device*,char*) ;
 int usbhs_irq_callback_update (struct usbhs_priv*,TYPE_1__*) ;
 struct device* usbhs_priv_to_dev (struct usbhs_priv*) ;
 int usbhsh_irq_attch ;
 int usbhsh_port_stat_clear (struct usbhsh_hpriv*,int ) ;
 int usbhsh_port_stat_set (struct usbhsh_hpriv*,int) ;
 struct usbhsh_hpriv* usbhsh_priv_to_hpriv (struct usbhs_priv*) ;
 int usbhsh_queue_force_pop_all (struct usbhs_priv*) ;

__attribute__((used)) static int usbhsh_irq_dtch(struct usbhs_priv *priv,
      struct usbhs_irq_state *irq_state)
{
 struct usbhsh_hpriv *hpriv = usbhsh_priv_to_hpriv(priv);
 struct device *dev = usbhs_priv_to_dev(priv);

 dev_dbg(dev, "device detached\n");

 usbhsh_port_stat_clear(hpriv, USB_PORT_STAT_CONNECTION);
 usbhsh_port_stat_set(hpriv, USB_PORT_STAT_C_CONNECTION << 16);
 hpriv->mod.irq_attch = usbhsh_irq_attch;
 usbhs_irq_callback_update(priv, &hpriv->mod);





 usbhsh_queue_force_pop_all(priv);

 return 0;
}

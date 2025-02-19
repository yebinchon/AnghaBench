
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int speed; } ;
struct usbhsg_gpriv {TYPE_1__ gadget; } ;
struct usbhs_priv {int dummy; } ;
struct usbhs_irq_state {int dummy; } ;
struct device {int dummy; } ;


 int dev_dbg (struct device*,char*,int ,int ) ;
 int usbhs_bus_get_speed (struct usbhs_priv*) ;
 int usbhs_status_get_device_state (struct usbhs_irq_state*) ;
 struct device* usbhsg_gpriv_to_dev (struct usbhsg_gpriv*) ;
 struct usbhsg_gpriv* usbhsg_priv_to_gpriv (struct usbhs_priv*) ;

__attribute__((used)) static int usbhsg_irq_dev_state(struct usbhs_priv *priv,
    struct usbhs_irq_state *irq_state)
{
 struct usbhsg_gpriv *gpriv = usbhsg_priv_to_gpriv(priv);
 struct device *dev = usbhsg_gpriv_to_dev(gpriv);

 gpriv->gadget.speed = usbhs_bus_get_speed(priv);

 dev_dbg(dev, "state = %x : speed : %d\n",
  usbhs_status_get_device_state(irq_state),
  gpriv->gadget.speed);

 return 0;
}

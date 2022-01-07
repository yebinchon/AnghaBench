
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhsh_hpriv {int setup_ack_done; } ;
struct usbhs_priv {int dummy; } ;
struct usbhs_irq_state {int dummy; } ;
struct device {int dummy; } ;


 int complete (int *) ;
 int dev_dbg (struct device*,char*) ;
 struct device* usbhs_priv_to_dev (struct usbhs_priv*) ;
 struct usbhsh_hpriv* usbhsh_priv_to_hpriv (struct usbhs_priv*) ;

__attribute__((used)) static int usbhsh_irq_setup_err(struct usbhs_priv *priv,
    struct usbhs_irq_state *irq_state)
{
 struct usbhsh_hpriv *hpriv = usbhsh_priv_to_hpriv(priv);
 struct device *dev = usbhs_priv_to_dev(priv);

 dev_dbg(dev, "setup packet Err\n");

 complete(&hpriv->setup_ack_done);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;
struct usbhs_pkt {int pipe; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int dev_err (struct device*,char*) ;
 struct usbhs_priv* usbhs_pipe_to_priv (int ) ;
 struct device* usbhs_priv_to_dev (struct usbhs_priv*) ;

__attribute__((used)) static int usbhsf_null_handle(struct usbhs_pkt *pkt, int *is_done)
{
 struct usbhs_priv *priv = usbhs_pipe_to_priv(pkt->pipe);
 struct device *dev = usbhs_priv_to_dev(priv);

 dev_err(dev, "null handler\n");

 return -EINVAL;
}

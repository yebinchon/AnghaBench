
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfcmrvl_private {int support_fw_dnld; int ndev; } ;
struct nfcmrvl_platform_data {int break_control; int flow_control; int reset_n_io; int hci_muxed; } ;
struct nci_uart {int ndev; struct nfcmrvl_private* drv_data; TYPE_1__* tty; } ;
struct device {TYPE_2__* parent; } ;
struct TYPE_4__ {scalar_t__ of_node; } ;
struct TYPE_3__ {struct device* dev; } ;


 scalar_t__ IS_ERR (struct nfcmrvl_private*) ;
 int NFCMRVL_PHY_UART ;
 int PTR_ERR (struct nfcmrvl_private*) ;
 int break_control ;
 int flow_control ;
 int hci_muxed ;
 struct nfcmrvl_private* nfcmrvl_nci_register_dev (int ,struct nci_uart*,int *,struct device*,struct nfcmrvl_platform_data*) ;
 scalar_t__ nfcmrvl_uart_parse_dt (scalar_t__,struct nfcmrvl_platform_data*) ;
 int pr_info (char*) ;
 int reset_n_io ;
 int uart_ops ;

__attribute__((used)) static int nfcmrvl_nci_uart_open(struct nci_uart *nu)
{
 struct nfcmrvl_private *priv;
 struct nfcmrvl_platform_data *pdata = ((void*)0);
 struct nfcmrvl_platform_data config;
 struct device *dev = nu->tty->dev;







 if (dev && dev->parent && dev->parent->of_node)
  if (nfcmrvl_uart_parse_dt(dev->parent->of_node, &config) == 0)
   pdata = &config;

 if (!pdata) {
  pr_info("No platform data / DT -> fallback to module params\n");
  config.hci_muxed = hci_muxed;
  config.reset_n_io = reset_n_io;
  config.flow_control = flow_control;
  config.break_control = break_control;
  pdata = &config;
 }

 priv = nfcmrvl_nci_register_dev(NFCMRVL_PHY_UART, nu, &uart_ops,
     dev, pdata);
 if (IS_ERR(priv))
  return PTR_ERR(priv);

 priv->support_fw_dnld = 1;

 nu->drv_data = priv;
 nu->ndev = priv->ndev;

 return 0;
}

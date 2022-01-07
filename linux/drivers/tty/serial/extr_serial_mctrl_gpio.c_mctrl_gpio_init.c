
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dev; } ;
struct mctrl_gpios {int* irq; int * gpio; struct uart_port* port; } ;
typedef enum mctrl_gpio_idx { ____Placeholder_mctrl_gpio_idx } mctrl_gpio_idx ;
struct TYPE_2__ {int name; } ;


 struct mctrl_gpios* ERR_PTR (int) ;
 int IRQ_NOAUTOEN ;
 int IRQ_TYPE_EDGE_BOTH ;
 scalar_t__ IS_ERR (struct mctrl_gpios*) ;
 int UART_GPIO_MAX ;
 int dev_err (int ,char*,int ,unsigned int,int) ;
 int dev_name (int ) ;
 int devm_request_irq (int ,int,int ,int ,int ,struct mctrl_gpios*) ;
 int gpiod_to_irq (int ) ;
 int irq_set_status_flags (int,int ) ;
 scalar_t__ mctrl_gpio_flags_is_dir_out (int) ;
 struct mctrl_gpios* mctrl_gpio_init_noauto (int ,unsigned int) ;
 int mctrl_gpio_irq_handle ;
 TYPE_1__* mctrl_gpios_desc ;

struct mctrl_gpios *mctrl_gpio_init(struct uart_port *port, unsigned int idx)
{
 struct mctrl_gpios *gpios;
 enum mctrl_gpio_idx i;

 gpios = mctrl_gpio_init_noauto(port->dev, idx);
 if (IS_ERR(gpios))
  return gpios;

 gpios->port = port;

 for (i = 0; i < UART_GPIO_MAX; ++i) {
  int ret;

  if (!gpios->gpio[i] || mctrl_gpio_flags_is_dir_out(i))
   continue;

  ret = gpiod_to_irq(gpios->gpio[i]);
  if (ret <= 0) {
   dev_err(port->dev,
    "failed to find corresponding irq for %s (idx=%d, err=%d)\n",
    mctrl_gpios_desc[i].name, idx, ret);
   return ERR_PTR(ret);
  }
  gpios->irq[i] = ret;


  irq_set_status_flags(gpios->irq[i], IRQ_NOAUTOEN);

  ret = devm_request_irq(port->dev, gpios->irq[i],
           mctrl_gpio_irq_handle,
           IRQ_TYPE_EDGE_BOTH, dev_name(port->dev),
           gpios);
  if (ret) {

   dev_err(port->dev,
    "failed to request irq for %s (idx=%d, err=%d)\n",
    mctrl_gpios_desc[i].name, idx, ret);
   return ERR_PTR(ret);
  }
 }

 return gpios;
}

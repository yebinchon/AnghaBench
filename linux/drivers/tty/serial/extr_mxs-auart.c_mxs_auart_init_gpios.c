
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_auart_port {int * gpio_irq; int gpios; int flags; } ;
struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;
typedef enum mctrl_gpio_idx { ____Placeholder_mctrl_gpio_idx } mctrl_gpio_idx ;


 int CTS_AT_AUART () ;
 int EINVAL ;
 scalar_t__ IS_ERR (int ) ;
 int MXS_AUART_RTSCTS ;
 int PTR_ERR (int ) ;
 int RTS_AT_AUART () ;
 int UART_GPIO_MAX ;
 int clear_bit (int ,int *) ;
 int dev_warn (struct device*,char*) ;
 int gpiod_get_direction (struct gpio_desc*) ;
 int gpiod_to_irq (struct gpio_desc*) ;
 int mctrl_gpio_init_noauto (struct device*,int ) ;
 struct gpio_desc* mctrl_gpio_to_gpiod (int ,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int mxs_auart_init_gpios(struct mxs_auart_port *s, struct device *dev)
{
 enum mctrl_gpio_idx i;
 struct gpio_desc *gpiod;

 s->gpios = mctrl_gpio_init_noauto(dev, 0);
 if (IS_ERR(s->gpios))
  return PTR_ERR(s->gpios);


 if (!RTS_AT_AUART() || !CTS_AT_AUART()) {
  if (test_bit(MXS_AUART_RTSCTS, &s->flags))
   dev_warn(dev,
     "DMA and flow control via gpio may cause some problems. DMA disabled!\n");
  clear_bit(MXS_AUART_RTSCTS, &s->flags);
 }

 for (i = 0; i < UART_GPIO_MAX; i++) {
  gpiod = mctrl_gpio_to_gpiod(s->gpios, i);
  if (gpiod && (gpiod_get_direction(gpiod) == 1))
   s->gpio_irq[i] = gpiod_to_irq(gpiod);
  else
   s->gpio_irq[i] = -EINVAL;
 }

 return 0;
}

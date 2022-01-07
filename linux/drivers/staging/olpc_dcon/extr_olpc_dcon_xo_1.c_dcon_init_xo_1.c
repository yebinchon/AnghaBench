
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dcon_priv {scalar_t__ curr_src; scalar_t__ pending_src; TYPE_1__* client; } ;
struct dcon_gpio {int name; int flags; } ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (struct dcon_gpio*) ;
 int DCON_IRQ ;
 scalar_t__ DCON_SOURCE_CPU ;
 scalar_t__ DCON_SOURCE_DCON ;
 int EIO ;
 int GPIO_EVENTS_ENABLE ;
 int GPIO_FE7_SEL ;
 int GPIO_FLTR7_AMOUNT ;
 int GPIO_INPUT_EVENT_COUNT ;
 int GPIO_INPUT_FILTER ;
 int GPIO_INPUT_INVERT ;
 int GPIO_NEGATIVE_EDGE_EN ;
 int GPIO_NEGATIVE_EDGE_STS ;
 int GPIO_OUTPUT_VAL ;
 int GPIO_POSITIVE_EDGE_STS ;
 scalar_t__ IS_ERR (int ) ;
 size_t OLPC_DCON_BLANK ;
 size_t OLPC_DCON_IRQ ;
 size_t OLPC_DCON_LOAD ;
 size_t OLPC_DCON_STAT0 ;
 size_t OLPC_DCON_STAT1 ;
 int OLPC_GPIO_DCON_BLANK ;
 int OLPC_GPIO_DCON_IRQ ;
 int OLPC_GPIO_DCON_LOAD ;
 int PTR_ERR (int ) ;
 int cs5535_gpio_clear (int ,int ) ;
 scalar_t__ cs5535_gpio_isset (int ,int ) ;
 int cs5535_gpio_set (int ,int ) ;
 int cs5535_gpio_set_irq (int,int) ;
 int cs5535_gpio_setup_event (int ,int,int ) ;
 int dcon_interrupt ;
 int devm_gpiod_get (int *,int ,int ) ;
 int gpiod_direction_input (int ) ;
 int gpiod_direction_output (int ,int) ;
 int * gpios ;
 struct dcon_gpio* gpios_asis ;
 unsigned char inb (int) ;
 int outb (unsigned char,int) ;
 int pr_err (char*,...) ;
 scalar_t__ request_irq (int,int *,int ,char*,struct dcon_priv*) ;

__attribute__((used)) static int dcon_init_xo_1(struct dcon_priv *dcon)
{
 unsigned char lob;
 int ret, i;
 const struct dcon_gpio *pin = &gpios_asis[0];

 for (i = 0; i < ARRAY_SIZE(gpios_asis); i++) {
  gpios[i] = devm_gpiod_get(&dcon->client->dev, pin[i].name,
       pin[i].flags);
  if (IS_ERR(gpios[i])) {
   ret = PTR_ERR(gpios[i]);
   pr_err("failed to request %s GPIO: %d\n", pin[i].name,
          ret);
   return ret;
  }
 }


 cs5535_gpio_clear(OLPC_GPIO_DCON_IRQ, GPIO_EVENTS_ENABLE);
 dcon->curr_src = cs5535_gpio_isset(OLPC_GPIO_DCON_LOAD, GPIO_OUTPUT_VAL)
  ? DCON_SOURCE_CPU
  : DCON_SOURCE_DCON;
 dcon->pending_src = dcon->curr_src;


 gpiod_direction_input(gpios[OLPC_DCON_STAT0]);
 gpiod_direction_input(gpios[OLPC_DCON_STAT1]);
 gpiod_direction_input(gpios[OLPC_DCON_IRQ]);
 gpiod_direction_input(gpios[OLPC_DCON_BLANK]);
 gpiod_direction_output(gpios[OLPC_DCON_LOAD],
          dcon->curr_src == DCON_SOURCE_CPU);




 cs5535_gpio_setup_event(OLPC_GPIO_DCON_IRQ, 2, 0);


 cs5535_gpio_set_irq(2, DCON_IRQ);


 lob = inb(0x4d0);
 lob &= ~(1 << DCON_IRQ);
 outb(lob, 0x4d0);


 if (request_irq(DCON_IRQ, &dcon_interrupt, 0, "DCON", dcon)) {
  pr_err("failed to request DCON's irq\n");
  return -EIO;
 }


 cs5535_gpio_clear(OLPC_GPIO_DCON_IRQ, GPIO_INPUT_INVERT);


 cs5535_gpio_set(OLPC_GPIO_DCON_BLANK, GPIO_INPUT_FILTER);


 cs5535_gpio_clear(OLPC_GPIO_DCON_IRQ, GPIO_INPUT_FILTER);


 cs5535_gpio_clear(OLPC_GPIO_DCON_IRQ, GPIO_INPUT_EVENT_COUNT);
 cs5535_gpio_clear(OLPC_GPIO_DCON_BLANK, GPIO_INPUT_EVENT_COUNT);


 cs5535_gpio_set(OLPC_GPIO_DCON_BLANK, GPIO_FE7_SEL);


 cs5535_gpio_clear(OLPC_GPIO_DCON_BLANK, GPIO_NEGATIVE_EDGE_EN);


 cs5535_gpio_set(OLPC_GPIO_DCON_IRQ, GPIO_NEGATIVE_EDGE_EN);


 cs5535_gpio_set(0, GPIO_FLTR7_AMOUNT);


 cs5535_gpio_set(OLPC_GPIO_DCON_IRQ, GPIO_NEGATIVE_EDGE_STS);
 cs5535_gpio_set(OLPC_GPIO_DCON_BLANK, GPIO_NEGATIVE_EDGE_STS);


 cs5535_gpio_set(OLPC_GPIO_DCON_IRQ, GPIO_POSITIVE_EDGE_STS);
 cs5535_gpio_set(OLPC_GPIO_DCON_BLANK, GPIO_POSITIVE_EDGE_STS);


 cs5535_gpio_set(OLPC_GPIO_DCON_IRQ, GPIO_EVENTS_ENABLE);
 cs5535_gpio_set(OLPC_GPIO_DCON_BLANK, GPIO_EVENTS_ENABLE);

 return 0;
}

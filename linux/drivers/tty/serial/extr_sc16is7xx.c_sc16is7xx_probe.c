
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef long u32 ;
struct sched_param {int sched_priority; } ;
struct TYPE_10__ {int base; int can_sleep; scalar_t__ ngpio; int set; int direction_output; int get; int direction_input; int label; struct device* parent; int owner; } ;
struct sc16is7xx_port {struct regmap* clk; struct regmap* kworker_task; TYPE_6__ gpio; TYPE_1__* p; struct regmap* regmap; int kworker; int irq_work; int efr_lock; struct sc16is7xx_devtype const* devtype; } ;
struct sc16is7xx_devtype {int nr_uart; scalar_t__ nr_gpio; } ;
struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_9__ {int irq; int flags; unsigned long uartclk; scalar_t__ line; int * ops; int rs485_config; int iotype; int fifosize; int type; struct device* dev; } ;
struct TYPE_8__ {int line; TYPE_2__ port; int reg_work; int tx_work; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int MAX_RT_PRIO ;
 int PORT_SC16IS7XX ;
 int PTR_ERR (struct regmap*) ;
 int SC16IS7XX_EFCR_REG ;
 int SC16IS7XX_EFCR_RXDISABLE_BIT ;
 int SC16IS7XX_EFCR_TXDISABLE_BIT ;
 int SC16IS7XX_EFR_ENABLE_BIT ;
 int SC16IS7XX_EFR_REG ;
 int SC16IS7XX_FIFO_SIZE ;
 int SC16IS7XX_IER_REG ;
 int SC16IS7XX_IOCONTROL_REG ;
 int SC16IS7XX_IOCONTROL_SRESET_BIT ;
 int SC16IS7XX_LCR_CONF_MODE_B ;
 int SC16IS7XX_LCR_REG ;
 scalar_t__ SC16IS7XX_MAX_DEVS ;
 int SC16IS7XX_REG_SHIFT ;
 int SCHED_FIFO ;
 int THIS_MODULE ;
 int UPF_FIXED_TYPE ;
 int UPF_LOW_LATENCY ;
 int UPIO_PORT ;
 int clear_bit (scalar_t__,int *) ;
 int clk_disable_unprepare (struct regmap*) ;
 unsigned long clk_get_rate (struct regmap*) ;
 int clk_prepare_enable (struct regmap*) ;
 int dev_dbg (struct device*,char*,unsigned long) ;
 int dev_err (struct device*,char*) ;
 unsigned long* dev_get_platdata (struct device*) ;
 int dev_name (struct device*) ;
 int dev_set_drvdata (struct device*,struct sc16is7xx_port*) ;
 int device_property_read_u32 (struct device*,char*,long*) ;
 struct regmap* devm_clk_get (struct device*,int *) ;
 struct sc16is7xx_port* devm_kzalloc (struct device*,int ,int ) ;
 int devm_request_irq (struct device*,int,int ,unsigned long,int ,struct sc16is7xx_port*) ;
 int gpiochip_add_data (TYPE_6__*,struct sc16is7xx_port*) ;
 int gpiochip_remove (TYPE_6__*) ;
 int kthread_init_work (int *,int ) ;
 int kthread_init_worker (int *) ;
 struct regmap* kthread_run (int ,int *,char*) ;
 int kthread_stop (struct regmap*) ;
 int kthread_worker_fn ;
 int mutex_init (int *) ;
 int p ;
 int regcache_cache_bypass (struct regmap*,int) ;
 int regmap_write (struct regmap*,int,int ) ;
 scalar_t__ sc16is7xx_alloc_line () ;
 int sc16is7xx_config_rs485 ;
 int sc16is7xx_gpio_direction_input ;
 int sc16is7xx_gpio_direction_output ;
 int sc16is7xx_gpio_get ;
 int sc16is7xx_gpio_set ;
 int sc16is7xx_irq ;
 int sc16is7xx_ist ;
 int sc16is7xx_lines ;
 int sc16is7xx_ops ;
 int sc16is7xx_port_write (TYPE_2__*,int ,int) ;
 int sc16is7xx_power (TYPE_2__*,int ) ;
 int sc16is7xx_reg_proc ;
 int sc16is7xx_tx_proc ;
 int sc16is7xx_uart ;
 int sched_setscheduler (struct regmap*,int ,struct sched_param*) ;
 int struct_size (struct sc16is7xx_port*,int ,int) ;
 int uart_add_one_port (int *,TYPE_2__*) ;
 int uart_remove_one_port (int *,TYPE_2__*) ;

__attribute__((used)) static int sc16is7xx_probe(struct device *dev,
      const struct sc16is7xx_devtype *devtype,
      struct regmap *regmap, int irq, unsigned long flags)
{
 struct sched_param sched_param = { .sched_priority = MAX_RT_PRIO / 2 };
 unsigned long freq = 0, *pfreq = dev_get_platdata(dev);
 u32 uartclk = 0;
 int i, ret;
 struct sc16is7xx_port *s;

 if (IS_ERR(regmap))
  return PTR_ERR(regmap);


 s = devm_kzalloc(dev, struct_size(s, p, devtype->nr_uart), GFP_KERNEL);
 if (!s) {
  dev_err(dev, "Error allocating port structure\n");
  return -ENOMEM;
 }


 device_property_read_u32(dev, "clock-frequency", &uartclk);

 s->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(s->clk)) {
  if (uartclk)
   freq = uartclk;
  if (pfreq)
   freq = *pfreq;
  if (freq)
   dev_dbg(dev, "Clock frequency: %luHz\n", freq);
  else
   return PTR_ERR(s->clk);
 } else {
  ret = clk_prepare_enable(s->clk);
  if (ret)
   return ret;

  freq = clk_get_rate(s->clk);
 }

 s->regmap = regmap;
 s->devtype = devtype;
 dev_set_drvdata(dev, s);
 mutex_init(&s->efr_lock);

 kthread_init_worker(&s->kworker);
 kthread_init_work(&s->irq_work, sc16is7xx_ist);
 s->kworker_task = kthread_run(kthread_worker_fn, &s->kworker,
          "sc16is7xx");
 if (IS_ERR(s->kworker_task)) {
  ret = PTR_ERR(s->kworker_task);
  goto out_clk;
 }
 sched_setscheduler(s->kworker_task, SCHED_FIFO, &sched_param);
 regmap_write(s->regmap, SC16IS7XX_IOCONTROL_REG << SC16IS7XX_REG_SHIFT,
   SC16IS7XX_IOCONTROL_SRESET_BIT);

 for (i = 0; i < devtype->nr_uart; ++i) {
  s->p[i].line = i;

  s->p[i].port.dev = dev;
  s->p[i].port.irq = irq;
  s->p[i].port.type = PORT_SC16IS7XX;
  s->p[i].port.fifosize = SC16IS7XX_FIFO_SIZE;
  s->p[i].port.flags = UPF_FIXED_TYPE | UPF_LOW_LATENCY;
  s->p[i].port.iotype = UPIO_PORT;
  s->p[i].port.uartclk = freq;
  s->p[i].port.rs485_config = sc16is7xx_config_rs485;
  s->p[i].port.ops = &sc16is7xx_ops;
  s->p[i].port.line = sc16is7xx_alloc_line();
  if (s->p[i].port.line >= SC16IS7XX_MAX_DEVS) {
   ret = -ENOMEM;
   goto out_ports;
  }


  sc16is7xx_port_write(&s->p[i].port, SC16IS7XX_IER_REG, 0);

  sc16is7xx_port_write(&s->p[i].port, SC16IS7XX_EFCR_REG,
         SC16IS7XX_EFCR_RXDISABLE_BIT |
         SC16IS7XX_EFCR_TXDISABLE_BIT);

  kthread_init_work(&s->p[i].tx_work, sc16is7xx_tx_proc);
  kthread_init_work(&s->p[i].reg_work, sc16is7xx_reg_proc);

  uart_add_one_port(&sc16is7xx_uart, &s->p[i].port);


  sc16is7xx_port_write(&s->p[i].port, SC16IS7XX_LCR_REG,
         SC16IS7XX_LCR_CONF_MODE_B);

  regcache_cache_bypass(s->regmap, 1);


  sc16is7xx_port_write(&s->p[i].port, SC16IS7XX_EFR_REG,
         SC16IS7XX_EFR_ENABLE_BIT);

  regcache_cache_bypass(s->regmap, 0);


  sc16is7xx_port_write(&s->p[i].port, SC16IS7XX_LCR_REG, 0x00);


  sc16is7xx_power(&s->p[i].port, 0);
 }


 ret = devm_request_irq(dev, irq, sc16is7xx_irq,
          flags, dev_name(dev), s);
 if (!ret)
  return 0;

out_ports:
 for (i--; i >= 0; i--) {
  uart_remove_one_port(&sc16is7xx_uart, &s->p[i].port);
  clear_bit(s->p[i].port.line, &sc16is7xx_lines);
 }







 kthread_stop(s->kworker_task);

out_clk:
 if (!IS_ERR(s->clk))
  clk_disable_unprepare(s->clk);

 return ret;
}

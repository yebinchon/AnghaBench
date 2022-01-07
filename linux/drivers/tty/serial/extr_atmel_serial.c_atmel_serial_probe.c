
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


struct TYPE_17__ {struct device_node* of_node; TYPE_1__* parent; } ;
struct platform_device {TYPE_6__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_14__ {int flags; } ;
struct TYPE_16__ {int line; TYPE_2__ rs485; } ;
struct TYPE_15__ {int * buf; } ;
struct atmel_uart_port {TYPE_4__ uart; int * clk; TYPE_3__ rx_ring; int gpios; int lock_suspended; int tasklet_shutdown; scalar_t__ backup_imr; } ;
struct atmel_uart_char {int dummy; } ;
struct TYPE_13__ {struct device_node* of_node; } ;
struct TYPE_12__ {int flags; } ;


 TYPE_11__* ATMEL_CONSOLE_DEVICE ;
 int ATMEL_MAX_UART ;
 int ATMEL_SERIAL_RINGSIZE ;
 int ATMEL_US_CR ;
 int ATMEL_US_MR ;
 int ATMEL_US_RTSEN ;
 int ATMEL_US_USMODE_NORMAL ;
 int BUILD_BUG_ON (int) ;
 int CON_ENABLED ;
 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SER_RS485_ENABLED ;
 int atmel_get_ip_name (TYPE_4__*) ;
 int atmel_init_port (struct atmel_uart_port*,struct platform_device*) ;
 scalar_t__ atmel_is_console_port (TYPE_4__*) ;
 struct atmel_uart_port* atmel_ports ;
 int atmel_ports_in_use ;
 int atmel_serial_probe_fifos (struct atmel_uart_port*,struct platform_device*) ;
 int atmel_uart ;
 int atmel_uart_writel (TYPE_4__*,int ,int ) ;
 int atmel_use_pdc_rx (TYPE_4__*) ;
 int atomic_set (int *,int ) ;
 int clear_bit (int,int ) ;
 int clk_disable_unprepare (int *) ;
 int clk_prepare_enable (int *) ;
 int clk_put (int *) ;
 int device_init_wakeup (TYPE_6__*,int) ;
 int find_first_zero_bit (int ,int) ;
 int kfree (int *) ;
 void* kmalloc_array (int,int,int ) ;
 int mctrl_gpio_init (TYPE_4__*,int ) ;
 int of_alias_get_id (struct device_node*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct atmel_uart_port*) ;
 int spin_lock_init (int *) ;
 scalar_t__ test_and_set_bit (int,int ) ;
 int uart_add_one_port (int *,TYPE_4__*) ;

__attribute__((used)) static int atmel_serial_probe(struct platform_device *pdev)
{
 struct atmel_uart_port *atmel_port;
 struct device_node *np = pdev->dev.parent->of_node;
 void *data;
 int ret;
 bool rs485_enabled;

 BUILD_BUG_ON(ATMEL_SERIAL_RINGSIZE & (ATMEL_SERIAL_RINGSIZE - 1));
 pdev->dev.of_node = np;

 ret = of_alias_get_id(np, "serial");
 if (ret < 0)


  ret = find_first_zero_bit(atmel_ports_in_use, ATMEL_MAX_UART);

 if (ret >= ATMEL_MAX_UART) {
  ret = -ENODEV;
  goto err;
 }

 if (test_and_set_bit(ret, atmel_ports_in_use)) {

  ret = -EBUSY;
  goto err;
 }

 atmel_port = &atmel_ports[ret];
 atmel_port->backup_imr = 0;
 atmel_port->uart.line = ret;
 atmel_serial_probe_fifos(atmel_port, pdev);

 atomic_set(&atmel_port->tasklet_shutdown, 0);
 spin_lock_init(&atmel_port->lock_suspended);

 ret = atmel_init_port(atmel_port, pdev);
 if (ret)
  goto err_clear_bit;

 atmel_port->gpios = mctrl_gpio_init(&atmel_port->uart, 0);
 if (IS_ERR(atmel_port->gpios)) {
  ret = PTR_ERR(atmel_port->gpios);
  goto err_clear_bit;
 }

 if (!atmel_use_pdc_rx(&atmel_port->uart)) {
  ret = -ENOMEM;
  data = kmalloc_array(ATMEL_SERIAL_RINGSIZE,
         sizeof(struct atmel_uart_char),
         GFP_KERNEL);
  if (!data)
   goto err_alloc_ring;
  atmel_port->rx_ring.buf = data;
 }

 rs485_enabled = atmel_port->uart.rs485.flags & SER_RS485_ENABLED;

 ret = uart_add_one_port(&atmel_uart, &atmel_port->uart);
 if (ret)
  goto err_add_port;
 device_init_wakeup(&pdev->dev, 1);
 platform_set_drvdata(pdev, atmel_port);





 clk_prepare_enable(atmel_port->clk);

 if (rs485_enabled) {
  atmel_uart_writel(&atmel_port->uart, ATMEL_US_MR,
      ATMEL_US_USMODE_NORMAL);
  atmel_uart_writel(&atmel_port->uart, ATMEL_US_CR,
      ATMEL_US_RTSEN);
 }




 atmel_get_ip_name(&atmel_port->uart);





 clk_disable_unprepare(atmel_port->clk);

 return 0;

err_add_port:
 kfree(atmel_port->rx_ring.buf);
 atmel_port->rx_ring.buf = ((void*)0);
err_alloc_ring:
 if (!atmel_is_console_port(&atmel_port->uart)) {
  clk_put(atmel_port->clk);
  atmel_port->clk = ((void*)0);
 }
err_clear_bit:
 clear_bit(atmel_port->uart.line, atmel_ports_in_use);
err:
 return ret;
}

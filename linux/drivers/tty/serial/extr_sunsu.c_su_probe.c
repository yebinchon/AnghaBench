
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {size_t line; scalar_t__ type; int uartclk; int membase; int * ops; int flags; TYPE_2__* dev; int irq; int mapbase; int lock; } ;
struct uart_sunsu_port {int su_type; int reg_size; TYPE_3__ port; } ;
struct resource {int start; } ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct TYPE_4__ {int * irqs; } ;
struct platform_device {struct resource* resource; TYPE_2__ dev; TYPE_1__ archdata; } ;
struct device_node {int dummy; } ;
typedef enum su_type { ____Placeholder_su_type } su_type ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ PORT_UNKNOWN ;
 int SUNSU_CONSOLE () ;
 int SU_BASE_BAUD ;
 scalar_t__ SU_PORT_KBD ;
 scalar_t__ SU_PORT_MS ;
 int SU_PORT_PORT ;
 size_t UART_NR ;
 int UPF_BOOT_AUTOCONF ;
 int kfree (struct uart_sunsu_port*) ;
 struct uart_sunsu_port* kzalloc (int,int ) ;
 size_t nr_inst ;
 int of_ioremap (struct resource*,int ,int ,char*) ;
 int of_iounmap (struct resource*,int ,int ) ;
 scalar_t__ of_node_name_eq (struct device_node*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct uart_sunsu_port*) ;
 int resource_size (struct resource*) ;
 int spin_lock_init (int *) ;
 int su_get_type (struct device_node*) ;
 int sunserial_console_match (int ,struct device_node*,int *,size_t,int) ;
 int sunsu_autoconfig (struct uart_sunsu_port*) ;
 int sunsu_kbd_ms_init (struct uart_sunsu_port*) ;
 int sunsu_pops ;
 struct uart_sunsu_port* sunsu_ports ;
 int sunsu_reg ;
 int uart_add_one_port (int *,TYPE_3__*) ;

__attribute__((used)) static int su_probe(struct platform_device *op)
{
 struct device_node *dp = op->dev.of_node;
 struct uart_sunsu_port *up;
 struct resource *rp;
 enum su_type type;
 bool ignore_line;
 int err;

 type = su_get_type(dp);
 if (type == SU_PORT_PORT) {
  if (nr_inst >= UART_NR)
   return -EINVAL;
  up = &sunsu_ports[nr_inst];
 } else {
  up = kzalloc(sizeof(*up), GFP_KERNEL);
  if (!up)
   return -ENOMEM;
 }

 up->port.line = nr_inst;

 spin_lock_init(&up->port.lock);

 up->su_type = type;

 rp = &op->resource[0];
 up->port.mapbase = rp->start;
 up->reg_size = resource_size(rp);
 up->port.membase = of_ioremap(rp, 0, up->reg_size, "su");
 if (!up->port.membase) {
  if (type != SU_PORT_PORT)
   kfree(up);
  return -ENOMEM;
 }

 up->port.irq = op->archdata.irqs[0];

 up->port.dev = &op->dev;

 up->port.type = PORT_UNKNOWN;
 up->port.uartclk = (SU_BASE_BAUD * 16);

 err = 0;
 if (up->su_type == SU_PORT_KBD || up->su_type == SU_PORT_MS) {
  err = sunsu_kbd_ms_init(up);
  if (err) {
   of_iounmap(&op->resource[0],
       up->port.membase, up->reg_size);
   kfree(up);
   return err;
  }
  platform_set_drvdata(op, up);

  nr_inst++;

  return 0;
 }

 up->port.flags |= UPF_BOOT_AUTOCONF;

 sunsu_autoconfig(up);

 err = -ENODEV;
 if (up->port.type == PORT_UNKNOWN)
  goto out_unmap;

 up->port.ops = &sunsu_pops;

 ignore_line = 0;
 if (of_node_name_eq(dp, "rsc-console") ||
     of_node_name_eq(dp, "lom-console"))
  ignore_line = 1;

 sunserial_console_match(SUNSU_CONSOLE(), dp,
    &sunsu_reg, up->port.line,
    ignore_line);
 err = uart_add_one_port(&sunsu_reg, &up->port);
 if (err)
  goto out_unmap;

 platform_set_drvdata(op, up);

 nr_inst++;

 return 0;

out_unmap:
 of_iounmap(&op->resource[0], up->port.membase, up->reg_size);
 kfree(up);
 return err;
}

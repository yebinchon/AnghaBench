
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ type; } ;
struct sci_port {long hscif_tot; long rx_fifo_timeout; int rx_fifo_timer; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 long HSSCR_TOT_SHIFT ;
 scalar_t__ PORT_HSCIF ;
 struct uart_port* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int ,long*) ;
 int rx_fifo_timer_fn ;
 int scif_set_rtrg (struct uart_port*,int) ;
 int timer_setup (int *,int ,int ) ;
 struct sci_port* to_sci_port (struct uart_port*) ;

__attribute__((used)) static ssize_t rx_fifo_timeout_store(struct device *dev,
    struct device_attribute *attr,
    const char *buf,
    size_t count)
{
 struct uart_port *port = dev_get_drvdata(dev);
 struct sci_port *sci = to_sci_port(port);
 int ret;
 long r;

 ret = kstrtol(buf, 0, &r);
 if (ret)
  return ret;

 if (port->type == PORT_HSCIF) {
  if (r < 0 || r > 3)
   return -EINVAL;
  sci->hscif_tot = r << HSSCR_TOT_SHIFT;
 } else {
  sci->rx_fifo_timeout = r;
  scif_set_rtrg(port, 1);
  if (r > 0)
   timer_setup(&sci->rx_fifo_timer, rx_fifo_timer_fn, 0);
 }

 return count;
}

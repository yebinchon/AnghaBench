
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_port {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct tty_port* dev_get_drvdata (struct device*) ;
 int do_serial8250_get_rxtrig (struct tty_port*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t serial8250_get_attr_rx_trig_bytes(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 struct tty_port *port = dev_get_drvdata(dev);
 int rxtrig_bytes;

 rxtrig_bytes = do_serial8250_get_rxtrig(port);
 if (rxtrig_bytes < 0)
  return rxtrig_bytes;

 return snprintf(buf, PAGE_SIZE, "%d\n", rxtrig_bytes);
}

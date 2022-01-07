
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_port {int dummy; } ;
struct serial_struct {unsigned long port; scalar_t__ port_high; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int HIGH_BITS_OFFSET ;
 int PAGE_SIZE ;
 struct tty_port* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,unsigned long) ;
 int uart_get_info (struct tty_port*,struct serial_struct*) ;

__attribute__((used)) static ssize_t uart_get_attr_port(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 struct serial_struct tmp;
 struct tty_port *port = dev_get_drvdata(dev);
 unsigned long ioaddr;

 uart_get_info(port, &tmp);
 ioaddr = tmp.port;
 if (HIGH_BITS_OFFSET)
  ioaddr |= (unsigned long)tmp.port_high << HIGH_BITS_OFFSET;
 return snprintf(buf, PAGE_SIZE, "0x%lX\n", ioaddr);
}

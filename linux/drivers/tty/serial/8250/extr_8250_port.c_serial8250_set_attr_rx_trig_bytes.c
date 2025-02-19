
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_port {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct tty_port* dev_get_drvdata (struct device*) ;
 int do_serial8250_set_rxtrig (struct tty_port*,unsigned char) ;
 int kstrtou8 (char const*,int,unsigned char*) ;

__attribute__((used)) static ssize_t serial8250_set_attr_rx_trig_bytes(struct device *dev,
 struct device_attribute *attr, const char *buf, size_t count)
{
 struct tty_port *port = dev_get_drvdata(dev);
 unsigned char bytes;
 int ret;

 if (!count)
  return -EINVAL;

 ret = kstrtou8(buf, 10, &bytes);
 if (ret < 0)
  return ret;

 ret = do_serial8250_set_rxtrig(port, bytes);
 if (ret < 0)
  return ret;

 return count;
}

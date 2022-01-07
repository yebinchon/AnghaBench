
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int func; scalar_t__ socket; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 int sprintf (char*,char*,int) ;
 struct pcmcia_device* to_pcmcia_dev (struct device*) ;

__attribute__((used)) static ssize_t function_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 struct pcmcia_device *p_dev = to_pcmcia_dev(dev);
 return p_dev->socket ? sprintf(buf, "0x%02x\n", p_dev->func) : -ENODEV;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {scalar_t__ suspended; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*) ;
 struct pcmcia_device* to_pcmcia_dev (struct device*) ;

__attribute__((used)) static ssize_t pm_state_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct pcmcia_device *p_dev = to_pcmcia_dev(dev);

 if (p_dev->suspended)
  return sprintf(buf, "off\n");
 else
  return sprintf(buf, "on\n");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int PCMCIA_UEVENT_RESUME ;
 int PCMCIA_UEVENT_SUSPEND ;
 int pcmcia_parse_uevents (struct pcmcia_socket*,int ) ;
 int strncmp (char const*,char*,int) ;
 struct pcmcia_socket* to_socket (struct device*) ;

__attribute__((used)) static ssize_t pccard_store_card_pm_state(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct pcmcia_socket *s = to_socket(dev);
 ssize_t ret = count;

 if (!count)
  return -EINVAL;

 if (!strncmp(buf, "off", 3))
  pcmcia_parse_uevents(s, PCMCIA_UEVENT_SUSPEND);
 else {
  if (!strncmp(buf, "on", 2))
   pcmcia_parse_uevents(s, PCMCIA_UEVENT_RESUME);
  else
   ret = -EINVAL;
 }

 return ret;
}

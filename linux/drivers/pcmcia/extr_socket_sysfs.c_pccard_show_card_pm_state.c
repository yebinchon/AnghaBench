
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int SOCKET_SUSPEND ;
 int sprintf (char*,char*,char*) ;
 struct pcmcia_socket* to_socket (struct device*) ;

__attribute__((used)) static ssize_t pccard_show_card_pm_state(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 struct pcmcia_socket *s = to_socket(dev);
 return sprintf(buf, "%s\n", s->state & SOCKET_SUSPEND ? "off" : "on");
}

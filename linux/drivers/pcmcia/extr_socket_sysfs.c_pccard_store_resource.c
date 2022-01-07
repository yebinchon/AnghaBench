
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int resource_setup_done; int ops_mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int PCMCIA_UEVENT_REQUERY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pcmcia_parse_uevents (struct pcmcia_socket*,int ) ;
 struct pcmcia_socket* to_socket (struct device*) ;

__attribute__((used)) static ssize_t pccard_store_resource(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct pcmcia_socket *s = to_socket(dev);

 if (!count)
  return -EINVAL;

 mutex_lock(&s->ops_mutex);
 if (!s->resource_setup_done)
  s->resource_setup_done = 1;
 mutex_unlock(&s->ops_mutex);

 pcmcia_parse_uevents(s, PCMCIA_UEVENT_REQUERY);

 return count;
}

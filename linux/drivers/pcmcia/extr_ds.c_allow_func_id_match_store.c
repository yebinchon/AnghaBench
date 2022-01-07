
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {int allow_func_id_match; TYPE_1__* socket; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int ops_mutex; } ;


 size_t EINVAL ;
 int PCMCIA_UEVENT_REQUERY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pcmcia_parse_uevents (TYPE_1__*,int ) ;
 struct pcmcia_device* to_pcmcia_dev (struct device*) ;

__attribute__((used)) static ssize_t allow_func_id_match_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct pcmcia_device *p_dev = to_pcmcia_dev(dev);

 if (!count)
  return -EINVAL;

 mutex_lock(&p_dev->socket->ops_mutex);
 p_dev->allow_func_id_match = 1;
 mutex_unlock(&p_dev->socket->ops_mutex);
 pcmcia_parse_uevents(p_dev->socket, PCMCIA_UEVENT_REQUERY);

 return count;
}

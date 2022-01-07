
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pcmcia_socket {int ops_mutex; int irq_mask; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sscanf (char const*,char*,int *) ;
 struct pcmcia_socket* to_socket (struct device*) ;

__attribute__((used)) static ssize_t pccard_store_irq_mask(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 ssize_t ret;
 struct pcmcia_socket *s = to_socket(dev);
 u32 mask;

 if (!count)
  return -EINVAL;

 ret = sscanf(buf, "0x%x\n", &mask);

 if (ret == 1) {
  mutex_lock(&s->ops_mutex);
  s->irq_mask &= mask;
  mutex_unlock(&s->ops_mutex);
  ret = 0;
 }

 return ret ? ret : count;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_map {scalar_t__ num; scalar_t__ base; struct resource_map* next; } ;
struct socket_data {struct resource_map io_db; } ;
struct pcmcia_socket {int ops_mutex; struct socket_data* resource_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct pcmcia_socket* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ snprintf (char*,int,char*,unsigned long,scalar_t__) ;

__attribute__((used)) static ssize_t show_io_db(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct pcmcia_socket *s = dev_get_drvdata(dev);
 struct socket_data *data;
 struct resource_map *p;
 ssize_t ret = 0;

 mutex_lock(&s->ops_mutex);
 data = s->resource_data;

 for (p = data->io_db.next; p != &data->io_db; p = p->next) {
  if (ret > (PAGE_SIZE - 10))
   continue;
  ret += snprintf(&buf[ret], (PAGE_SIZE - ret - 1),
    "0x%08lx - 0x%08lx\n",
    ((unsigned long) p->base),
    ((unsigned long) p->base + p->num - 1));
 }

 mutex_unlock(&s->ops_mutex);
 return ret;
}

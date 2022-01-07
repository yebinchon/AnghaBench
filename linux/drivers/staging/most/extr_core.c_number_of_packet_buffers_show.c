
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct most_channel {unsigned int channel_id; TYPE_2__* iface; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {TYPE_1__* channel_vector; } ;
struct TYPE_3__ {int num_buffers_packet; } ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;
 struct most_channel* to_channel (struct device*) ;

__attribute__((used)) static ssize_t number_of_packet_buffers_show(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 struct most_channel *c = to_channel(dev);
 unsigned int i = c->channel_id;

 return snprintf(buf, PAGE_SIZE, "%d\n",
   c->iface->channel_vector[i].num_buffers_packet);
}

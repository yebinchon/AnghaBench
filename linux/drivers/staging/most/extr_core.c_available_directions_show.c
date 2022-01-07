
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
struct TYPE_3__ {int direction; } ;


 int MOST_CH_RX ;
 int MOST_CH_TX ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 struct most_channel* to_channel (struct device*) ;

__attribute__((used)) static ssize_t available_directions_show(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 struct most_channel *c = to_channel(dev);
 unsigned int i = c->channel_id;

 strcpy(buf, "");
 if (c->iface->channel_vector[i].direction & MOST_CH_RX)
  strcat(buf, "rx ");
 if (c->iface->channel_vector[i].direction & MOST_CH_TX)
  strcat(buf, "tx ");
 strcat(buf, "\n");
 return strlen(buf);
}

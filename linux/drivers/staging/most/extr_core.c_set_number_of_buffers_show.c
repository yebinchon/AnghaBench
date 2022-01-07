
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_buffers; } ;
struct most_channel {TYPE_1__ cfg; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;
 struct most_channel* to_channel (struct device*) ;

__attribute__((used)) static ssize_t set_number_of_buffers_show(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct most_channel *c = to_channel(dev);

 return snprintf(buf, PAGE_SIZE, "%d\n", c->cfg.num_buffers);
}

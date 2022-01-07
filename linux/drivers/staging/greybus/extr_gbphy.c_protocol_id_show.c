
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gbphy_device {TYPE_1__* cport_desc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int protocol_id; } ;


 int sprintf (char*,char*,int) ;
 struct gbphy_device* to_gbphy_dev (struct device*) ;

__attribute__((used)) static ssize_t protocol_id_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct gbphy_device *gbphy_dev = to_gbphy_dev(dev);

 return sprintf(buf, "0x%02x\n", gbphy_dev->cport_desc->protocol_id);
}

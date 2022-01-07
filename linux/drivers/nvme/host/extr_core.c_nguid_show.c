
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int nguid; } ;
struct TYPE_4__ {TYPE_1__ ids; } ;


 TYPE_2__* dev_to_ns_head (struct device*) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t nguid_show(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 return sprintf(buf, "%pU\n", dev_to_ns_head(dev)->ids.nguid);
}

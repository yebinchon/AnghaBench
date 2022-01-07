
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int coreid; } ;
struct TYPE_4__ {TYPE_1__ id; } ;


 TYPE_2__* dev_to_ssb_dev (struct device*) ;
 int sprintf (char*,char*,char*) ;
 char* ssb_core_name (int ) ;

__attribute__((used)) static ssize_t
name_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 return sprintf(buf, "%s\n",
         ssb_core_name(dev_to_ssb_dev(dev)->id.coreid));
}

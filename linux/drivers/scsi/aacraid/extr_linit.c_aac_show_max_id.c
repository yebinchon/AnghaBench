
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int max_id; } ;


 int PAGE_SIZE ;
 TYPE_1__* class_to_shost (struct device*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t aac_show_max_id(struct device *device,
          struct device_attribute *attr, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%d\n",
   class_to_shost(device)->max_id);
}

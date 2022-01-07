
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ptp_clock {TYPE_1__* info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 scalar_t__ PAGE_SIZE ;
 struct ptp_clock* dev_get_drvdata (struct device*) ;
 int snprintf (char*,scalar_t__,char*,char*) ;

__attribute__((used)) static ssize_t clock_name_show(struct device *dev,
          struct device_attribute *attr, char *page)
{
 struct ptp_clock *ptp = dev_get_drvdata(dev);
 return snprintf(page, PAGE_SIZE-1, "%s\n", ptp->info->name);
}

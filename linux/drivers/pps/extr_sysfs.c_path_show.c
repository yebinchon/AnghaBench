
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* path; } ;
struct pps_device {TYPE_1__ info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct pps_device* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t path_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct pps_device *pps = dev_get_drvdata(dev);

 return sprintf(buf, "%s\n", pps->info.path);
}

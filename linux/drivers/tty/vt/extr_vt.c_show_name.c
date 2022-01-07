
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct con_driver {int flag; char* desc; } ;
typedef int ssize_t ;


 int CON_DRIVER_FLAG_MODULE ;
 int PAGE_SIZE ;
 struct con_driver* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,char*,char*) ;

__attribute__((used)) static ssize_t show_name(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct con_driver *con = dev_get_drvdata(dev);

 return snprintf(buf, PAGE_SIZE, "%s %s\n",
   (con->flag & CON_DRIVER_FLAG_MODULE) ? "(M)" : "(S)",
    con->desc);

}

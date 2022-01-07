
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ci_hdrc {scalar_t__ role; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 scalar_t__ CI_ROLE_END ;
 TYPE_1__* ci_role (struct ci_hdrc*) ;
 struct ci_hdrc* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t role_show(struct device *dev, struct device_attribute *attr,
     char *buf)
{
 struct ci_hdrc *ci = dev_get_drvdata(dev);

 if (ci->role != CI_ROLE_END)
  return sprintf(buf, "%s\n", ci_role(ci)->name);

 return 0;
}

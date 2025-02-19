
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* fi; } ;
struct uvc_device {TYPE_4__ func; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_5__ {char* ci_name; } ;
struct TYPE_6__ {TYPE_1__ cg_item; } ;
struct TYPE_7__ {TYPE_2__ group; } ;


 struct uvc_device* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t function_name_show(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct uvc_device *uvc = dev_get_drvdata(dev);

 return sprintf(buf, "%s\n", uvc->func.fi->group.cg_item.ci_name);
}

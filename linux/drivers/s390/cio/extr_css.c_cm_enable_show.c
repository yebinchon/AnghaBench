
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct channel_subsystem {int cm_enabled; int mutex; } ;
typedef int ssize_t ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 struct channel_subsystem* to_css (struct device*) ;

__attribute__((used)) static ssize_t cm_enable_show(struct device *dev, struct device_attribute *a,
         char *buf)
{
 struct channel_subsystem *css = to_css(dev);
 int ret;

 mutex_lock(&css->mutex);
 ret = sprintf(buf, "%x\n", css->cm_enabled);
 mutex_unlock(&css->mutex);
 return ret;
}

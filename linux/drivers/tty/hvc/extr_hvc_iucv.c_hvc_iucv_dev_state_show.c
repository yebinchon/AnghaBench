
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvc_iucv_private {int iucv_state; int tty_state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct hvc_iucv_private* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static ssize_t hvc_iucv_dev_state_show(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct hvc_iucv_private *priv = dev_get_drvdata(dev);
 return sprintf(buf, "%u:%u\n", priv->iucv_state, priv->tty_state);
}

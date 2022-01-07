
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmlogrdr_priv_t {int autopurge; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 struct vmlogrdr_priv_t* dev_get_drvdata (struct device*) ;

__attribute__((used)) static ssize_t vmlogrdr_autopurge_store(struct device * dev,
     struct device_attribute *attr,
     const char * buf, size_t count)
{
 struct vmlogrdr_priv_t *priv = dev_get_drvdata(dev);
 ssize_t ret = count;

 switch (buf[0]) {
 case '0':
  priv->autopurge=0;
  break;
 case '1':
  priv->autopurge=1;
  break;
 default:
  ret = -EINVAL;
 }
 return ret;
}

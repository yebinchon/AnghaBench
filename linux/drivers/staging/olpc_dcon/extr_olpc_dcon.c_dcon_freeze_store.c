
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dcon_priv {int dummy; } ;
typedef int ssize_t ;


 int DCON_SOURCE_CPU ;
 int DCON_SOURCE_DCON ;
 int EINVAL ;
 int dcon_set_source (struct dcon_priv*,int ) ;
 int dcon_set_source_sync (struct dcon_priv*,int ) ;
 struct dcon_priv* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t dcon_freeze_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct dcon_priv *dcon = dev_get_drvdata(dev);
 unsigned long output;
 int ret;

 ret = kstrtoul(buf, 10, &output);
 if (ret)
  return ret;

 switch (output) {
 case 0:
  dcon_set_source(dcon, DCON_SOURCE_CPU);
  break;
 case 1:
  dcon_set_source_sync(dcon, DCON_SOURCE_DCON);
  break;
 case 2:
  dcon_set_source(dcon, DCON_SOURCE_DCON);
  break;
 default:
  return -EINVAL;
 }

 return count;
}

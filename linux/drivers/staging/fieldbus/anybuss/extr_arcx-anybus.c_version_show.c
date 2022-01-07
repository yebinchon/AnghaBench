
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct controller_priv {char* version; } ;
typedef int ssize_t ;


 struct controller_priv* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t version_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct controller_priv *cd = dev_get_drvdata(dev);

 return sprintf(buf, "%s\n", cd->version);
}

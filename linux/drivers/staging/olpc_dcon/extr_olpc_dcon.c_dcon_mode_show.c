
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dcon_priv {int disp_mode; } ;
typedef int ssize_t ;


 struct dcon_priv* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t dcon_mode_show(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 struct dcon_priv *dcon = dev_get_drvdata(dev);

 return sprintf(buf, "%4.4X\n", dcon->disp_mode);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int mode; } ;
struct brcm_usb_phy_data {TYPE_1__ ini; } ;
typedef int ssize_t ;


 int ARRAY_SIZE (int *) ;
 int * brcm_dr_mode_to_name ;
 struct brcm_usb_phy_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*) ;
 char* value_to_name (int *,int ,int ) ;

__attribute__((used)) static ssize_t dr_mode_show(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct brcm_usb_phy_data *priv = dev_get_drvdata(dev);

 return sprintf(buf, "%s\n",
  value_to_name(&brcm_dr_mode_to_name[0],
         ARRAY_SIZE(brcm_dr_mode_to_name),
         priv->ini.mode));
}

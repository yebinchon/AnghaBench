
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_phy {int enabled; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int snprintf (char*,int,char*,int) ;
 struct sas_phy* transport_class_to_phy (struct device*) ;

__attribute__((used)) static ssize_t
show_sas_phy_enable(struct device *dev, struct device_attribute *attr,
      char *buf)
{
 struct sas_phy *phy = transport_class_to_phy(dev);

 return snprintf(buf, 20, "%d", phy->enabled);
}

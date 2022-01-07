
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct asd_ha_struct {size_t revision_id; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 char** asd_dev_rev ;
 struct asd_ha_struct* dev_to_asd_ha (struct device*) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t asd_show_dev_rev(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct asd_ha_struct *asd_ha = dev_to_asd_ha(dev);
 return snprintf(buf, PAGE_SIZE, "%s\n",
   asd_dev_rev[asd_ha->revision_id]);
}

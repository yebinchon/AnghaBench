
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int bld; } ;
struct TYPE_4__ {TYPE_1__ bios; } ;
struct asd_ha_struct {TYPE_2__ hw_prof; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct asd_ha_struct* dev_to_asd_ha (struct device*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t asd_show_dev_bios_build(struct device *dev,
           struct device_attribute *attr,char *buf)
{
 struct asd_ha_struct *asd_ha = dev_to_asd_ha(dev);
 return snprintf(buf, PAGE_SIZE, "%d\n", asd_ha->hw_prof.bios.bld);
}

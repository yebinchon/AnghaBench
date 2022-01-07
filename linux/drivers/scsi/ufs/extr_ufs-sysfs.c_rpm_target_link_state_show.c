
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ufs_hba {size_t rpm_lvl; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int link_state; } ;


 struct ufs_hba* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*) ;
 TYPE_1__* ufs_pm_lvl_states ;
 char* ufschd_uic_link_state_to_string (int ) ;

__attribute__((used)) static ssize_t rpm_target_link_state_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct ufs_hba *hba = dev_get_drvdata(dev);

 return sprintf(buf, "%s\n", ufschd_uic_link_state_to_string(
   ufs_pm_lvl_states[hba->rpm_lvl].link_state));
}

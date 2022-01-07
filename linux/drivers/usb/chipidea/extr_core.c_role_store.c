
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ci_hdrc {int role; int irq; TYPE_1__** roles; } ;
typedef size_t ssize_t ;
typedef enum ci_role { ____Placeholder_ci_role } ci_role ;
struct TYPE_2__ {int name; } ;


 int CI_ROLE_END ;
 size_t CI_ROLE_GADGET ;
 size_t CI_ROLE_HOST ;
 size_t EINVAL ;
 size_t EPERM ;
 int ci_handle_vbus_change (struct ci_hdrc*) ;
 int ci_role_start (struct ci_hdrc*,int) ;
 int ci_role_stop (struct ci_hdrc*) ;
 struct ci_hdrc* dev_get_drvdata (struct device*) ;
 int dev_warn (struct device*,char*) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int strlen (int ) ;
 int strncmp (char const*,int ,int ) ;

__attribute__((used)) static ssize_t role_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t n)
{
 struct ci_hdrc *ci = dev_get_drvdata(dev);
 enum ci_role role;
 int ret;

 if (!(ci->roles[CI_ROLE_HOST] && ci->roles[CI_ROLE_GADGET])) {
  dev_warn(dev, "Current configuration is not dual-role, quit\n");
  return -EPERM;
 }

 for (role = CI_ROLE_HOST; role < CI_ROLE_END; role++)
  if (!strncmp(buf, ci->roles[role]->name,
        strlen(ci->roles[role]->name)))
   break;

 if (role == CI_ROLE_END || role == ci->role)
  return -EINVAL;

 pm_runtime_get_sync(dev);
 disable_irq(ci->irq);
 ci_role_stop(ci);
 ret = ci_role_start(ci, role);
 if (!ret && ci->role == CI_ROLE_GADGET)
  ci_handle_vbus_change(ci);
 enable_irq(ci->irq);
 pm_runtime_put_sync(dev);

 return (ret == 0) ? n : ret;
}

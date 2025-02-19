
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct power_supply {TYPE_1__* desc; } ;
struct kobj_uevent_env {int dummy; } ;
struct TYPE_4__ {int name; } ;
struct device_attribute {TYPE_2__ attr; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int num_properties; size_t* properties; int name; } ;


 int ENODATA ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int add_uevent_var (struct kobj_uevent_env*,char*,char*,...) ;
 int dev_dbg (struct device*,char*) ;
 struct power_supply* dev_get_drvdata (struct device*) ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;
 int kfree (char*) ;
 char* kstruprdup (int ,int ) ;
 struct device_attribute* power_supply_attrs ;
 int power_supply_show_property (struct device*,struct device_attribute*,char*) ;
 char* strchr (char*,char) ;

int power_supply_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 struct power_supply *psy = dev_get_drvdata(dev);
 int ret = 0, j;
 char *prop_buf;
 char *attrname;

 if (!psy || !psy->desc) {
  dev_dbg(dev, "No power supply yet\n");
  return ret;
 }

 ret = add_uevent_var(env, "POWER_SUPPLY_NAME=%s", psy->desc->name);
 if (ret)
  return ret;

 prop_buf = (char *)get_zeroed_page(GFP_KERNEL);
 if (!prop_buf)
  return -ENOMEM;

 for (j = 0; j < psy->desc->num_properties; j++) {
  struct device_attribute *attr;
  char *line;

  attr = &power_supply_attrs[psy->desc->properties[j]];

  ret = power_supply_show_property(dev, attr, prop_buf);
  if (ret == -ENODEV || ret == -ENODATA) {


   ret = 0;
   continue;
  }

  if (ret < 0)
   goto out;

  line = strchr(prop_buf, '\n');
  if (line)
   *line = 0;

  attrname = kstruprdup(attr->attr.name, GFP_KERNEL);
  if (!attrname) {
   ret = -ENOMEM;
   goto out;
  }

  ret = add_uevent_var(env, "POWER_SUPPLY_%s=%s", attrname, prop_buf);
  kfree(attrname);
  if (ret)
   goto out;
 }

out:
 free_page((unsigned long)prop_buf);

 return ret;
}

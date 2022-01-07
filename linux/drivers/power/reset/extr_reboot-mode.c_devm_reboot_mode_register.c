
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reboot_mode_driver {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_reboot_mode_release ;
 int devres_add (struct device*,struct reboot_mode_driver**) ;
 struct reboot_mode_driver** devres_alloc (int ,int,int ) ;
 int devres_free (struct reboot_mode_driver**) ;
 int reboot_mode_register (struct reboot_mode_driver*) ;

int devm_reboot_mode_register(struct device *dev,
         struct reboot_mode_driver *reboot)
{
 struct reboot_mode_driver **dr;
 int rc;

 dr = devres_alloc(devm_reboot_mode_release, sizeof(*dr), GFP_KERNEL);
 if (!dr)
  return -ENOMEM;

 rc = reboot_mode_register(reboot);
 if (rc) {
  devres_free(dr);
  return rc;
 }

 *dr = reboot;
 devres_add(dev, dr);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_8__ {TYPE_3__* name; } ;
struct TYPE_9__ {TYPE_2__ attr; } ;


 int da_num_tokens ;
 int kfree (TYPE_3__*) ;
 int smbios_attribute_group ;
 int sysfs_remove_group (int *,int *) ;
 TYPE_3__* token_attrs ;
 TYPE_3__* token_location_attrs ;
 TYPE_3__* token_value_attrs ;

__attribute__((used)) static void free_group(struct platform_device *pdev)
{
 int i;

 sysfs_remove_group(&pdev->dev.kobj,
    &smbios_attribute_group);
 for (i = 0; i < da_num_tokens; i++) {
  kfree(token_location_attrs[i].attr.name);
  kfree(token_value_attrs[i].attr.name);
 }
 kfree(token_attrs);
 kfree(token_value_attrs);
 kfree(token_location_attrs);
}

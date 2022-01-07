
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct config_group {int dummy; } ;
struct TYPE_7__ {int function; } ;
struct TYPE_6__ {TYPE_3__ gadget_driver; int name; int max_speed; int * resume; int * suspend; void* unbind; void* bind; } ;
struct TYPE_5__ {int bcdDevice; int bDescriptorType; int bLength; } ;
struct TYPE_8__ {TYPE_1__ desc; } ;
struct gadget_info {struct config_group group; TYPE_2__ composite; TYPE_4__ cdev; int available_func; int string_list; int lock; struct config_group os_desc_group; struct config_group strings_group; struct config_group configs_group; struct config_group functions_group; } ;


 int ENOMEM ;
 struct config_group* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int USB_DT_DEVICE ;
 int USB_DT_DEVICE_SIZE ;
 int USB_SPEED_SUPER ;
 int composite_init_dev (TYPE_4__*) ;
 int config_desc_type ;
 int config_group_init_type_name (struct config_group*,char const*,int *) ;
 int configfs_add_default_group (struct config_group*,struct config_group*) ;
 void* configfs_do_nothing ;
 TYPE_3__ configfs_driver_template ;
 int cpu_to_le16 (int ) ;
 int functions_type ;
 int gadget_root_type ;
 int gadget_strings_strings_type ;
 int get_default_bcdDevice () ;
 int kfree (struct gadget_info*) ;
 int kstrdup (char const*,int ) ;
 struct gadget_info* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int os_desc_type ;

__attribute__((used)) static struct config_group *gadgets_make(
  struct config_group *group,
  const char *name)
{
 struct gadget_info *gi;

 gi = kzalloc(sizeof(*gi), GFP_KERNEL);
 if (!gi)
  return ERR_PTR(-ENOMEM);

 config_group_init_type_name(&gi->group, name, &gadget_root_type);

 config_group_init_type_name(&gi->functions_group, "functions",
   &functions_type);
 configfs_add_default_group(&gi->functions_group, &gi->group);

 config_group_init_type_name(&gi->configs_group, "configs",
   &config_desc_type);
 configfs_add_default_group(&gi->configs_group, &gi->group);

 config_group_init_type_name(&gi->strings_group, "strings",
   &gadget_strings_strings_type);
 configfs_add_default_group(&gi->strings_group, &gi->group);

 config_group_init_type_name(&gi->os_desc_group, "os_desc",
   &os_desc_type);
 configfs_add_default_group(&gi->os_desc_group, &gi->group);

 gi->composite.bind = configfs_do_nothing;
 gi->composite.unbind = configfs_do_nothing;
 gi->composite.suspend = ((void*)0);
 gi->composite.resume = ((void*)0);
 gi->composite.max_speed = USB_SPEED_SUPER;

 mutex_init(&gi->lock);
 INIT_LIST_HEAD(&gi->string_list);
 INIT_LIST_HEAD(&gi->available_func);

 composite_init_dev(&gi->cdev);
 gi->cdev.desc.bLength = USB_DT_DEVICE_SIZE;
 gi->cdev.desc.bDescriptorType = USB_DT_DEVICE;
 gi->cdev.desc.bcdDevice = cpu_to_le16(get_default_bcdDevice());

 gi->composite.gadget_driver = configfs_driver_template;

 gi->composite.gadget_driver.function = kstrdup(name, GFP_KERNEL);
 gi->composite.name = gi->composite.gadget_driver.function;

 if (!gi->composite.gadget_driver.function)
  goto err;

 return &gi->group;
err:
 kfree(gi);
 return ERR_PTR(-ENOMEM);
}

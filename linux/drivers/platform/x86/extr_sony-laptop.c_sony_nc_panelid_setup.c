
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct device_attribute {int dummy; } ;
struct TYPE_6__ {char* name; int mode; } ;
struct TYPE_7__ {int * store; int show; TYPE_1__ attr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int S_IRUGO ;
 unsigned int device_create_file (int *,TYPE_2__*) ;
 int kfree (TYPE_2__*) ;
 TYPE_2__* kzalloc (int,int ) ;
 TYPE_2__* panel_handle ;
 int sony_nc_panelid_show ;
 int sysfs_attr_init (TYPE_1__*) ;

__attribute__((used)) static int sony_nc_panelid_setup(struct platform_device *pd)
{
 unsigned int result;

 panel_handle = kzalloc(sizeof(struct device_attribute), GFP_KERNEL);
 if (!panel_handle)
  return -ENOMEM;

 sysfs_attr_init(&panel_handle->attr);
 panel_handle->attr.name = "panel_id";
 panel_handle->attr.mode = S_IRUGO;
 panel_handle->show = sony_nc_panelid_show;
 panel_handle->store = ((void*)0);

 result = device_create_file(&pd->dev, panel_handle);
 if (result) {
  kfree(panel_handle);
  panel_handle = ((void*)0);
  return result;
 }

 return 0;
}

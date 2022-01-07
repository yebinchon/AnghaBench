
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct touchpad_control {int dummy; } ;
struct platform_device {int dev; } ;
struct TYPE_7__ {char* name; int mode; } ;
struct TYPE_8__ {int store; int show; TYPE_2__ attr; } ;
struct TYPE_6__ {unsigned int handle; TYPE_5__ attr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int S_IRUGO ;
 int S_IWUSR ;
 int device_create_file (int *,TYPE_5__*) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kzalloc (int,int ) ;
 int sony_nc_touchpad_show ;
 int sony_nc_touchpad_store ;
 int sysfs_attr_init (TYPE_2__*) ;
 TYPE_1__* tp_ctl ;

__attribute__((used)) static int sony_nc_touchpad_setup(struct platform_device *pd,
  unsigned int handle)
{
 int ret = 0;

 tp_ctl = kzalloc(sizeof(struct touchpad_control), GFP_KERNEL);
 if (!tp_ctl)
  return -ENOMEM;

 tp_ctl->handle = handle;

 sysfs_attr_init(&tp_ctl->attr.attr);
 tp_ctl->attr.attr.name = "touchpad";
 tp_ctl->attr.attr.mode = S_IRUGO | S_IWUSR;
 tp_ctl->attr.show = sony_nc_touchpad_show;
 tp_ctl->attr.store = sony_nc_touchpad_store;

 ret = device_create_file(&pd->dev, &tp_ctl->attr);
 if (ret) {
  kfree(tp_ctl);
  tp_ctl = ((void*)0);
 }

 return ret;
}

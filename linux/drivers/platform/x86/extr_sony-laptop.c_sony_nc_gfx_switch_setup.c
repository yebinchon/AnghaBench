
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct snc_gfx_switch_control {int dummy; } ;
struct platform_device {int dev; } ;
struct TYPE_6__ {char* name; int mode; } ;
struct TYPE_8__ {int show; TYPE_1__ attr; } ;
struct TYPE_7__ {unsigned int handle; TYPE_5__ attr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int S_IRUGO ;
 unsigned int device_create_file (int *,TYPE_5__*) ;
 TYPE_2__* gfxs_ctl ;
 int kfree (TYPE_2__*) ;
 TYPE_2__* kzalloc (int,int ) ;
 int sony_nc_gfx_switch_status_show ;
 int sysfs_attr_init (TYPE_1__*) ;

__attribute__((used)) static int sony_nc_gfx_switch_setup(struct platform_device *pd,
  unsigned int handle)
{
 unsigned int result;

 gfxs_ctl = kzalloc(sizeof(struct snc_gfx_switch_control), GFP_KERNEL);
 if (!gfxs_ctl)
  return -ENOMEM;

 gfxs_ctl->handle = handle;

 sysfs_attr_init(&gfxs_ctl->attr.attr);
 gfxs_ctl->attr.attr.name = "gfx_switch_status";
 gfxs_ctl->attr.attr.mode = S_IRUGO;
 gfxs_ctl->attr.show = sony_nc_gfx_switch_status_show;

 result = device_create_file(&pd->dev, &gfxs_ctl->attr);
 if (result)
  goto gfxerror;

 return 0;

gfxerror:
 kfree(gfxs_ctl);
 gfxs_ctl = ((void*)0);

 return result;
}

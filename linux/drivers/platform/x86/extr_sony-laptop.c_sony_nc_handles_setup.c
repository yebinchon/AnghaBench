
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_6__ {char* name; int mode; } ;
struct TYPE_8__ {int show; TYPE_1__ attr; } ;
struct TYPE_7__ {int* cap; TYPE_5__ devattr; } ;


 int ARRAY_SIZE (int*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int S_IRUGO ;
 scalar_t__ debug ;
 scalar_t__ device_create_file (int *,TYPE_5__*) ;
 int dprintk (char*,int,int) ;
 TYPE_2__* handles ;
 int kfree (TYPE_2__*) ;
 TYPE_2__* kzalloc (int,int ) ;
 int sony_nc_acpi_handle ;
 int sony_nc_handles_show ;
 int sony_nc_int_call (int ,char*,int*,int*) ;
 int sysfs_attr_init (TYPE_1__*) ;

__attribute__((used)) static int sony_nc_handles_setup(struct platform_device *pd)
{
 int i, r, result, arg;

 handles = kzalloc(sizeof(*handles), GFP_KERNEL);
 if (!handles)
  return -ENOMEM;

 for (i = 0; i < ARRAY_SIZE(handles->cap); i++) {
  arg = i + 0x20;
  r = sony_nc_int_call(sony_nc_acpi_handle, "SN00", &arg,
     &result);
  if (!r) {
   dprintk("caching handle 0x%.4x (offset: 0x%.2x)\n",
     result, i);
   handles->cap[i] = result;
  }
 }

 if (debug) {
  sysfs_attr_init(&handles->devattr.attr);
  handles->devattr.attr.name = "handles";
  handles->devattr.attr.mode = S_IRUGO;
  handles->devattr.show = sony_nc_handles_show;


  if (device_create_file(&pd->dev, &handles->devattr)) {
   kfree(handles);
   handles = ((void*)0);
   return -1;
  }
 }

 return 0;
}

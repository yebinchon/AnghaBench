
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_5__ {int name; } ;
struct TYPE_7__ {TYPE_1__ attr; } ;
struct TYPE_6__ {TYPE_4__* attrs; } ;


 int LID_RESUME_MAX ;
 int device_remove_file (int *,TYPE_4__*) ;
 int kfree (TYPE_2__*) ;
 TYPE_2__* lid_ctl ;

__attribute__((used)) static void sony_nc_lid_resume_cleanup(struct platform_device *pd)
{
 int i;

 if (lid_ctl) {
  for (i = 0; i < LID_RESUME_MAX; i++) {
   if (!lid_ctl->attrs[i].attr.name)
    break;

   device_remove_file(&pd->dev, &lid_ctl->attrs[i]);
  }

  kfree(lid_ctl);
  lid_ctl = ((void*)0);
 }
}

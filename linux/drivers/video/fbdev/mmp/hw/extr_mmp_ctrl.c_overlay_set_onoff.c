
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mmp_overlay {int status; TYPE_2__* path; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_5__ {scalar_t__ (* check_status ) (TYPE_2__*) ;} ;
struct TYPE_6__ {scalar_t__ status; TYPE_1__ ops; int name; } ;


 int dev_info (int ,char*,int ,int ) ;
 int dmafetch_onoff (struct mmp_overlay*,int) ;
 TYPE_4__* overlay_to_ctrl (struct mmp_overlay*) ;
 int path_onoff (TYPE_2__*,int) ;
 int stat_name (int) ;
 scalar_t__ stub1 (TYPE_2__*) ;

__attribute__((used)) static void overlay_set_onoff(struct mmp_overlay *overlay, int on)
{
 if (overlay->status == on) {
  dev_info(overlay_to_ctrl(overlay)->dev, "overlay %s is already %s\n",
   overlay->path->name, stat_name(overlay->status));
  return;
 }
 overlay->status = on;
 dmafetch_onoff(overlay, on);
 if (overlay->path->ops.check_status(overlay->path)
   != overlay->path->status)
  path_onoff(overlay->path, on);
}

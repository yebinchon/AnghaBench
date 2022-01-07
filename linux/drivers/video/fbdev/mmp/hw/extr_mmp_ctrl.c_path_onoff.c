
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mmp_path {int status; TYPE_1__* panel; int name; int dev; } ;
struct TYPE_3__ {int (* set_onoff ) (TYPE_1__*,int) ;} ;


 int dev_info (int ,char*,int ,int ) ;
 int path_enabledisable (struct mmp_path*,int) ;
 int stat_name (int) ;
 int stub1 (TYPE_1__*,int) ;
 int stub2 (TYPE_1__*,int) ;

__attribute__((used)) static void path_onoff(struct mmp_path *path, int on)
{
 if (path->status == on) {
  dev_info(path->dev, "path %s is already %s\n",
    path->name, stat_name(path->status));
  return;
 }

 if (on) {
  path_enabledisable(path, 1);

  if (path->panel && path->panel->set_onoff)
   path->panel->set_onoff(path->panel, 1);
 } else {
  if (path->panel && path->panel->set_onoff)
   path->panel->set_onoff(path->panel, 0);

  path_enabledisable(path, 0);
 }
 path->status = on;
}

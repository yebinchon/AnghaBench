
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmp_path {int overlay_num; TYPE_1__* overlays; } ;
struct TYPE_2__ {scalar_t__ status; } ;



__attribute__((used)) static int path_check_status(struct mmp_path *path)
{
 int i;
 for (i = 0; i < path->overlay_num; i++)
  if (path->overlays[i].status)
   return 1;

 return 0;
}

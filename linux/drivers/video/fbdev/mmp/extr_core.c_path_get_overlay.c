
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmp_path {int overlay_num; struct mmp_overlay* overlays; } ;
struct mmp_overlay {int dummy; } ;



__attribute__((used)) static struct mmp_overlay *path_get_overlay(struct mmp_path *path,
  int overlay_id)
{
 if (path && overlay_id < path->overlay_num)
  return &path->overlays[overlay_id];
 return ((void*)0);
}

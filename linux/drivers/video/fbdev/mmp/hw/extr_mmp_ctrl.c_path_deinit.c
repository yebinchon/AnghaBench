
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmphw_path_plat {int path; } ;


 int mmp_unregister_path (int ) ;

__attribute__((used)) static void path_deinit(struct mmphw_path_plat *path_plat)
{
 if (!path_plat)
  return;

 mmp_unregister_path(path_plat->path);
}

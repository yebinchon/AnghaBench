
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmphw_ctrl {int dummy; } ;
struct mmp_path {int dummy; } ;
struct TYPE_2__ {struct mmphw_ctrl* ctrl; } ;


 TYPE_1__* path_to_path_plat (struct mmp_path*) ;

__attribute__((used)) static inline struct mmphw_ctrl *path_to_ctrl(struct mmp_path *path)
{
 return path_to_path_plat(path)->ctrl;
}

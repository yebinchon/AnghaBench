
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmp_path {int dummy; } ;
struct TYPE_2__ {void* reg_base; } ;


 TYPE_1__* path_to_ctrl (struct mmp_path*) ;

__attribute__((used)) static inline void *ctrl_regs(struct mmp_path *path)
{
 return path_to_ctrl(path)->reg_base;
}

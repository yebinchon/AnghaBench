
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sa1100fb_info {TYPE_1__* inf; } ;
struct TYPE_2__ {int (* set_visual ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static void sa1100fb_set_visual(struct sa1100fb_info *fbi, u32 visual)
{
 if (fbi->inf->set_visual)
  fbi->inf->set_visual(visual);
}

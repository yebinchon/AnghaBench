
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct omapfb_info {int id; TYPE_1__* region; } ;
struct TYPE_2__ {int id; } ;


 int OMAPFB_MEM_IDX_ENABLED ;

__attribute__((used)) static u8 get_mem_idx(struct omapfb_info *ofbi)
{
 if (ofbi->id == ofbi->region->id)
  return 0;

 return OMAPFB_MEM_IDX_ENABLED | ofbi->region->id;
}

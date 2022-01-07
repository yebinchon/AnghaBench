
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct omapfb_info {scalar_t__ rotation_type; TYPE_2__* region; } ;
struct TYPE_3__ {int * paddr; } ;
struct TYPE_4__ {int paddr; TYPE_1__ vrfb; } ;


 scalar_t__ OMAP_DSS_ROT_VRFB ;

__attribute__((used)) static u32 omapfb_get_region_paddr(const struct omapfb_info *ofbi)
{
 if (ofbi->rotation_type == OMAP_DSS_ROT_VRFB)
  return ofbi->region->vrfb.paddr[0];
 else
  return ofbi->region->paddr;
}

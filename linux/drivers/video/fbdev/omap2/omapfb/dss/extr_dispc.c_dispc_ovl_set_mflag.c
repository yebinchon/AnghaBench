
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;


 int DISPC_OVL_ATTRIBUTES (int) ;
 int OMAP_DSS_GFX ;
 int REG_FLD_MOD (int ,int,int,int) ;

__attribute__((used)) static void dispc_ovl_set_mflag(enum omap_plane plane, bool enable)
{
 int bit;

 if (plane == OMAP_DSS_GFX)
  bit = 14;
 else
  bit = 23;

 REG_FLD_MOD(DISPC_OVL_ATTRIBUTES(plane), enable, bit, bit);
}

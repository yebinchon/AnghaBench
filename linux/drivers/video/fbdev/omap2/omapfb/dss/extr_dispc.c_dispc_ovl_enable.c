
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;


 int DISPC_OVL_ATTRIBUTES (int) ;
 int DSSDBG (char*,int,int) ;
 int REG_FLD_MOD (int ,int,int ,int ) ;

int dispc_ovl_enable(enum omap_plane plane, bool enable)
{
 DSSDBG("dispc_enable_plane %d, %d\n", plane, enable);

 REG_FLD_MOD(DISPC_OVL_ATTRIBUTES(plane), enable ? 1 : 0, 0, 0);

 return 0;
}

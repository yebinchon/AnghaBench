
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;


 int BUG_ON (int) ;
 int DISPC_OVL_FIR_COEF_H2 (int,int) ;
 int OMAP_DSS_GFX ;
 int dispc_write_reg (int ,int ) ;

__attribute__((used)) static void dispc_ovl_write_firh2_reg(enum omap_plane plane, int reg, u32 value)
{
 BUG_ON(plane == OMAP_DSS_GFX);

 dispc_write_reg(DISPC_OVL_FIR_COEF_H2(plane, reg), value);
}

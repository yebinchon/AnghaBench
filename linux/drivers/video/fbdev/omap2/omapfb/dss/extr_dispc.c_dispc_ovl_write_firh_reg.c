
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;


 int DISPC_OVL_FIR_COEF_H (int,int) ;
 int dispc_write_reg (int ,int ) ;

__attribute__((used)) static void dispc_ovl_write_firh_reg(enum omap_plane plane, int reg, u32 value)
{
 dispc_write_reg(DISPC_OVL_FIR_COEF_H(plane, reg), value);
}

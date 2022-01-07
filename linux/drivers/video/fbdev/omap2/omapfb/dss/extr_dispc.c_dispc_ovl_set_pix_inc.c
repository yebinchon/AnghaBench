
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;
typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;


 int DISPC_OVL_PIXEL_INC (int) ;
 int dispc_write_reg (int ,int ) ;

__attribute__((used)) static void dispc_ovl_set_pix_inc(enum omap_plane plane, s32 inc)
{
 dispc_write_reg(DISPC_OVL_PIXEL_INC(plane), inc);
}

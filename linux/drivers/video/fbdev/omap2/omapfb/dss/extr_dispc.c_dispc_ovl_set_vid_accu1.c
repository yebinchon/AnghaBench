
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;


 int DISPC_OVL_ACCU1 (int) ;
 int FEAT_REG_HORIZONTALACCU ;
 int FEAT_REG_VERTICALACCU ;
 int FLD_VAL (int,int ,int ) ;
 int dispc_write_reg (int ,int) ;
 int dss_feat_get_reg_field (int ,int *,int *) ;

__attribute__((used)) static void dispc_ovl_set_vid_accu1(enum omap_plane plane, int haccu, int vaccu)
{
 u32 val;
 u8 hor_start, hor_end, vert_start, vert_end;

 dss_feat_get_reg_field(FEAT_REG_HORIZONTALACCU, &hor_start, &hor_end);
 dss_feat_get_reg_field(FEAT_REG_VERTICALACCU, &vert_start, &vert_end);

 val = FLD_VAL(vaccu, vert_start, vert_end) |
   FLD_VAL(haccu, hor_start, hor_end);

 dispc_write_reg(DISPC_OVL_ACCU1(plane), val);
}

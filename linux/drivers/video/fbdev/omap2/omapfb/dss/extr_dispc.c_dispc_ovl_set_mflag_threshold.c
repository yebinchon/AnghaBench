
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;


 int DISPC_OVL_MFLAG_THRESHOLD (int) ;
 int FLD_VAL (int,int,int) ;
 int dispc_write_reg (int ,int) ;

__attribute__((used)) static void dispc_ovl_set_mflag_threshold(enum omap_plane plane,
 int low, int high)
{
 dispc_write_reg(DISPC_OVL_MFLAG_THRESHOLD(plane),
  FLD_VAL(high, 31, 16) | FLD_VAL(low, 15, 0));
}

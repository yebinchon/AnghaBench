
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;
typedef enum omap_burst_size { ____Placeholder_omap_burst_size } omap_burst_size ;


 int DISPC_OVL_ATTRIBUTES (int) ;
 int REG_FLD_MOD (int ,int,int,int) ;

__attribute__((used)) static void dispc_ovl_set_burst_size(enum omap_plane plane,
  enum omap_burst_size burst_size)
{
 static const unsigned shifts[] = { 6, 14, 14, 14, 14, };
 int shift;

 shift = shifts[plane];
 REG_FLD_MOD(DISPC_OVL_ATTRIBUTES(plane), burst_size, shift + 1, shift);
}

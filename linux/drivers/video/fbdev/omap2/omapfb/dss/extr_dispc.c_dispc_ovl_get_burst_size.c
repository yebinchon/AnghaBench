
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;


 unsigned int dss_feat_get_burst_size_unit () ;

__attribute__((used)) static u32 dispc_ovl_get_burst_size(enum omap_plane plane)
{
 unsigned unit = dss_feat_get_burst_size_unit();

 return unit * 8;
}

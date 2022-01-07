
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;


 int DISPC_OVL_ATTRIBUTES (int) ;
 int REG_GET (int ,int ,int ) ;

bool dispc_ovl_enabled(enum omap_plane plane)
{
 return REG_GET(DISPC_OVL_ATTRIBUTES(plane), 0, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;


 int DISPC_CONTROL2 ;
 int DISPC_OVL_ATTRIBUTES (int) ;
 int DSSERR (char*) ;
 int OMAP_DSS_WB ;
 int REG_FLD_MOD (int ,int,int,int) ;
 int REG_GET (int ,int,int) ;

void dispc_wb_go(void)
{
 enum omap_plane plane = OMAP_DSS_WB;
 bool enable, go;

 enable = REG_GET(DISPC_OVL_ATTRIBUTES(plane), 0, 0) == 1;

 if (!enable)
  return;

 go = REG_GET(DISPC_CONTROL2, 6, 6) == 1;
 if (go) {
  DSSERR("GO bit not down for WB\n");
  return;
 }

 REG_FLD_MOD(DISPC_CONTROL2, 1, 6, 6);
}

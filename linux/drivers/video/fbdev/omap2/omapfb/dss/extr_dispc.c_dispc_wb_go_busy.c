
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPC_CONTROL2 ;
 int REG_GET (int ,int,int) ;

bool dispc_wb_go_busy(void)
{
 return REG_GET(DISPC_CONTROL2, 6, 6) == 1;
}

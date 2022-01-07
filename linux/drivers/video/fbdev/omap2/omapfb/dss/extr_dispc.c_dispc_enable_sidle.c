
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPC_SYSCONFIG ;
 int REG_FLD_MOD (int ,int,int,int) ;

void dispc_enable_sidle(void)
{
 REG_FLD_MOD(DISPC_SYSCONFIG, 2, 4, 3);
}

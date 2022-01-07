
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DSS_CONTROL ;
 int REG_FLD_MOD (int ,int,int,int) ;

void dss_set_dac_pwrdn_bgz(bool enable)
{
 REG_FLD_MOD(DSS_CONTROL, enable, 5, 5);
}

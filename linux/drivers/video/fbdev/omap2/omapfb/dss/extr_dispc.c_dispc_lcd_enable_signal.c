
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPC_CONTROL ;
 int FEAT_LCDENABLESIGNAL ;
 int REG_FLD_MOD (int ,int,int,int) ;
 int dss_has_feature (int ) ;

void dispc_lcd_enable_signal(bool enable)
{
 if (!dss_has_feature(FEAT_LCDENABLESIGNAL))
  return;

 REG_FLD_MOD(DISPC_CONTROL, enable ? 1 : 0, 28, 28);
}

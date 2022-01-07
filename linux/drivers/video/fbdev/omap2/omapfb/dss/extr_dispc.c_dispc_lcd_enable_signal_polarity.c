
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPC_CONTROL ;
 int FEAT_LCDENABLEPOL ;
 int REG_FLD_MOD (int ,int,int,int) ;
 int dss_has_feature (int ) ;

__attribute__((used)) static void dispc_lcd_enable_signal_polarity(bool act_high)
{
 if (!dss_has_feature(FEAT_LCDENABLEPOL))
  return;

 REG_FLD_MOD(DISPC_CONTROL, act_high ? 1 : 0, 29, 29);
}

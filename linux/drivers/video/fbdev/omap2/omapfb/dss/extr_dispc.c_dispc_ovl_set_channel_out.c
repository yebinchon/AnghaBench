
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int BUG () ;
 int DISPC_OVL_ATTRIBUTES (int) ;
 int FEAT_MGR_LCD2 ;
 int FEAT_MGR_LCD3 ;
 int FLD_MOD (int ,int,int,int) ;
 int dispc_read_reg (int ) ;
 int dispc_write_reg (int ,int ) ;
 scalar_t__ dss_has_feature (int ) ;

void dispc_ovl_set_channel_out(enum omap_plane plane, enum omap_channel channel)
{
 int shift;
 u32 val;
 int chan = 0, chan2 = 0;

 switch (plane) {
 case 131:
  shift = 8;
  break;
 case 130:
 case 129:
 case 128:
  shift = 16;
  break;
 default:
  BUG();
  return;
 }

 val = dispc_read_reg(DISPC_OVL_ATTRIBUTES(plane));
 if (dss_has_feature(FEAT_MGR_LCD2)) {
  switch (channel) {
  case 135:
   chan = 0;
   chan2 = 0;
   break;
  case 136:
   chan = 1;
   chan2 = 0;
   break;
  case 134:
   chan = 0;
   chan2 = 1;
   break;
  case 133:
   if (dss_has_feature(FEAT_MGR_LCD3)) {
    chan = 0;
    chan2 = 2;
   } else {
    BUG();
    return;
   }
   break;
  case 132:
   chan = 0;
   chan2 = 3;
   break;
  default:
   BUG();
   return;
  }

  val = FLD_MOD(val, chan, shift, shift);
  val = FLD_MOD(val, chan2, 31, 30);
 } else {
  val = FLD_MOD(val, channel, shift, shift);
 }
 dispc_write_reg(DISPC_OVL_ATTRIBUTES(plane), val);
}

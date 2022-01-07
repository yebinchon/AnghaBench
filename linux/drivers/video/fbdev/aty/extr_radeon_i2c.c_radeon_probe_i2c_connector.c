
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct radeonfb_info {scalar_t__ is_mobility; TYPE_1__* i2c; } ;
struct TYPE_2__ {int adapter; } ;


 int INREG (int ) ;
 int LVDS_GEN_CNTL ;
 int LVDS_ON ;
 int MT_CRT ;
 int MT_DFP ;
 int MT_LCD ;
 int MT_NONE ;
 int* fb_ddc_read (int *) ;
 int pr_debug (char*,int) ;

int radeon_probe_i2c_connector(struct radeonfb_info *rinfo, int conn,
          u8 **out_edid)
{
 u8 *edid;

 edid = fb_ddc_read(&rinfo->i2c[conn-1].adapter);

 if (out_edid)
  *out_edid = edid;
 if (!edid) {
  pr_debug("radeonfb: I2C (port %d) ... not found\n", conn);
  return MT_NONE;
 }
 if (edid[0x14] & 0x80) {

  if (rinfo->is_mobility &&
      (INREG(LVDS_GEN_CNTL) & LVDS_ON)) {
   pr_debug("radeonfb: I2C (port %d) ... found LVDS panel\n", conn);
   return MT_LCD;
  } else {
   pr_debug("radeonfb: I2C (port %d) ... found TMDS panel\n", conn);
   return MT_DFP;
  }
 }
 pr_debug("radeonfb: I2C (port %d) ... found CRT display\n", conn);
 return MT_CRT;
}

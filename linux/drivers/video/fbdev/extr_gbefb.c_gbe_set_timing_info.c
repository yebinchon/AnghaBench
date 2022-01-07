
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct gbe_timing_info {int pll_m; int pll_n; int pll_p; int htotal; int vtotal; int vsync_start; int vsync_end; int hsync_start; int hsync_end; int vblank_start; int vblank_end; int hblank_start; int hblank_end; int width; } ;
struct TYPE_2__ {unsigned int dotclock; unsigned int vt_xymax; unsigned int vt_vsync; unsigned int vt_hsync; unsigned int vt_vblank; unsigned int vt_hblank; unsigned int vt_vcmap; unsigned int vt_hcmap; unsigned int did_start_xy; unsigned int crs_start_xy; unsigned int vc_start_xy; unsigned int vt_hpixen; unsigned int vt_vpixen; unsigned int vt_flags; } ;


 int CRS_STARTX ;
 int CRS_STARTY ;
 int CRS_START_XY ;
 int DID_STARTX ;
 int DID_STARTY ;
 int DID_START_XY ;
 int DOTCLK ;
 int GBE_CRS_MAGIC ;
 int GBE_PIXEN_MAGIC_OFF ;
 int GBE_PIXEN_MAGIC_ON ;
 int HBLANK_OFF ;
 int HBLANK_ON ;
 int HCMAP_OFF ;
 int HCMAP_ON ;
 int HPIXEN_OFF ;
 int HPIXEN_ON ;
 int HSYNC_OFF ;
 int HSYNC_ON ;
 int M ;
 int MAXX ;
 int MAXY ;
 int N ;
 int P ;
 int RUN ;
 int SET_GBE_FIELD (int ,int ,unsigned int,int) ;
 int SYNC_LOW ;
 int VBLANK_OFF ;
 int VBLANK_ON ;
 int VCMAP_OFF ;
 int VCMAP_ON ;
 int VC_STARTX ;
 int VC_STARTY ;
 int VC_START_XY ;
 int VPIXEN_OFF ;
 int VPIXEN_ON ;
 int VSYNC_OFF ;
 int VSYNC_ON ;
 int VT_FLAGS ;
 int VT_HBLANK ;
 int VT_HCMAP ;
 int VT_HPIXEN ;
 int VT_HSYNC ;
 int VT_VBLANK ;
 int VT_VCMAP ;
 int VT_VPIXEN ;
 int VT_VSYNC ;
 int VT_XYMAX ;
 scalar_t__ flat_panel_enabled ;
 TYPE_1__* gbe ;
 int gbefb_setup_flatpanel (struct gbe_timing_info*) ;
 int mdelay (int) ;

__attribute__((used)) static void gbe_set_timing_info(struct gbe_timing_info *timing)
{
 int temp;
 unsigned int val;


 val = 0;
 SET_GBE_FIELD(DOTCLK, M, val, timing->pll_m - 1);
 SET_GBE_FIELD(DOTCLK, N, val, timing->pll_n - 1);
 SET_GBE_FIELD(DOTCLK, P, val, timing->pll_p);
 SET_GBE_FIELD(DOTCLK, RUN, val, 0);
 gbe->dotclock = val;
 mdelay(10);


 val = 0;
 SET_GBE_FIELD(VT_XYMAX, MAXX, val, timing->htotal);
 SET_GBE_FIELD(VT_XYMAX, MAXY, val, timing->vtotal);
 gbe->vt_xymax = val;


 val = 0;
 SET_GBE_FIELD(VT_VSYNC, VSYNC_ON, val, timing->vsync_start);
 SET_GBE_FIELD(VT_VSYNC, VSYNC_OFF, val, timing->vsync_end);
 gbe->vt_vsync = val;
 val = 0;
 SET_GBE_FIELD(VT_HSYNC, HSYNC_ON, val, timing->hsync_start);
 SET_GBE_FIELD(VT_HSYNC, HSYNC_OFF, val, timing->hsync_end);
 gbe->vt_hsync = val;
 val = 0;
 SET_GBE_FIELD(VT_VBLANK, VBLANK_ON, val, timing->vblank_start);
 SET_GBE_FIELD(VT_VBLANK, VBLANK_OFF, val, timing->vblank_end);
 gbe->vt_vblank = val;
 val = 0;
 SET_GBE_FIELD(VT_HBLANK, HBLANK_ON, val,
        timing->hblank_start - 5);
 SET_GBE_FIELD(VT_HBLANK, HBLANK_OFF, val,
        timing->hblank_end - 3);
 gbe->vt_hblank = val;


 val = 0;
 SET_GBE_FIELD(VT_VCMAP, VCMAP_ON, val, timing->vblank_start);
 SET_GBE_FIELD(VT_VCMAP, VCMAP_OFF, val, timing->vblank_end);
 gbe->vt_vcmap = val;
 val = 0;
 SET_GBE_FIELD(VT_HCMAP, HCMAP_ON, val, timing->hblank_start);
 SET_GBE_FIELD(VT_HCMAP, HCMAP_OFF, val, timing->hblank_end);
 gbe->vt_hcmap = val;

 val = 0;
 temp = timing->vblank_start - timing->vblank_end - 1;
 if (temp > 0)
  temp = -temp;

 if (flat_panel_enabled)
  gbefb_setup_flatpanel(timing);

 SET_GBE_FIELD(DID_START_XY, DID_STARTY, val, (u32) temp);
 if (timing->hblank_end >= 20)
  SET_GBE_FIELD(DID_START_XY, DID_STARTX, val,
         timing->hblank_end - 20);
 else
  SET_GBE_FIELD(DID_START_XY, DID_STARTX, val,
         timing->htotal - (20 - timing->hblank_end));
 gbe->did_start_xy = val;

 val = 0;
 SET_GBE_FIELD(CRS_START_XY, CRS_STARTY, val, (u32) (temp + 1));
 if (timing->hblank_end >= GBE_CRS_MAGIC)
  SET_GBE_FIELD(CRS_START_XY, CRS_STARTX, val,
         timing->hblank_end - GBE_CRS_MAGIC);
 else
  SET_GBE_FIELD(CRS_START_XY, CRS_STARTX, val,
         timing->htotal - (GBE_CRS_MAGIC -
      timing->hblank_end));
 gbe->crs_start_xy = val;

 val = 0;
 SET_GBE_FIELD(VC_START_XY, VC_STARTY, val, (u32) temp);
 SET_GBE_FIELD(VC_START_XY, VC_STARTX, val, timing->hblank_end - 4);
 gbe->vc_start_xy = val;

 val = 0;
 temp = timing->hblank_end - GBE_PIXEN_MAGIC_ON;
 if (temp < 0)
  temp += timing->htotal;

 SET_GBE_FIELD(VT_HPIXEN, HPIXEN_ON, val, temp);
 SET_GBE_FIELD(VT_HPIXEN, HPIXEN_OFF, val,
        ((temp + timing->width -
   GBE_PIXEN_MAGIC_OFF) % timing->htotal));
 gbe->vt_hpixen = val;

 val = 0;
 SET_GBE_FIELD(VT_VPIXEN, VPIXEN_ON, val, timing->vblank_end);
 SET_GBE_FIELD(VT_VPIXEN, VPIXEN_OFF, val, timing->vblank_start);
 gbe->vt_vpixen = val;


 val = 0;
 SET_GBE_FIELD(VT_FLAGS, SYNC_LOW, val, 1);
 gbe->vt_flags = val;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct gbe_timing_info {int flags; int pll_m; int pll_n; scalar_t__ pll_p; } ;
struct TYPE_2__ {void* fp_vdrv; void* fp_hdrv; void* fp_de; void* vt_flags; } ;


 int FB_SYNC_HOR_HIGH_ACT ;
 int FB_SYNC_VERT_HIGH_ACT ;
 int FP_DE ;
 int FP_HDRV ;
 int FP_VDRV ;
 int HDRV_INVERT ;
 int OFF ;
 int ON ;
 int SET_GBE_FIELD (int ,int ,void*,int) ;
 int VDRV_INVERT ;
 int VT_FLAGS ;
 TYPE_1__* gbe ;

__attribute__((used)) static void gbefb_setup_flatpanel(struct gbe_timing_info *timing)
{
 int fp_wid, fp_hgt, fp_vbs, fp_vbe;
 u32 outputVal = 0;

 SET_GBE_FIELD(VT_FLAGS, HDRV_INVERT, outputVal,
  (timing->flags & FB_SYNC_HOR_HIGH_ACT) ? 0 : 1);
 SET_GBE_FIELD(VT_FLAGS, VDRV_INVERT, outputVal,
  (timing->flags & FB_SYNC_VERT_HIGH_ACT) ? 0 : 1);
 gbe->vt_flags = outputVal;


 fp_wid = 1600;
 fp_hgt = 1024;
 fp_vbs = 0;
 fp_vbe = 1600;
 timing->pll_m = 4;
 timing->pll_n = 1;
 timing->pll_p = 0;

 outputVal = 0;
 SET_GBE_FIELD(FP_DE, ON, outputVal, fp_vbs);
 SET_GBE_FIELD(FP_DE, OFF, outputVal, fp_vbe);
 gbe->fp_de = outputVal;
 outputVal = 0;
 SET_GBE_FIELD(FP_HDRV, OFF, outputVal, fp_wid);
 gbe->fp_hdrv = outputVal;
 outputVal = 0;
 SET_GBE_FIELD(FP_VDRV, ON, outputVal, 1);
 SET_GBE_FIELD(FP_VDRV, OFF, outputVal, fp_hgt + 1);
 gbe->fp_vdrv = outputVal;
}

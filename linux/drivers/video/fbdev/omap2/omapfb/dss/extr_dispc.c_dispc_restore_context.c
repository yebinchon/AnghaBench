
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctx_valid; } ;


 int CONFIG ;
 int CONFIG2 ;
 int CONFIG3 ;
 int CONTROL ;
 int CONTROL2 ;
 int CONTROL3 ;
 int CPR_COEF_B (int) ;
 int CPR_COEF_G (int) ;
 int CPR_COEF_R (int) ;
 int DATA_CYCLE1 (int) ;
 int DATA_CYCLE2 (int) ;
 int DATA_CYCLE3 (int) ;
 int DEFAULT_COLOR (int) ;
 int DISPC_IRQ_SYNC_LOST_DIGIT ;
 int DIVISOR ;
 int DIVISORo (int) ;
 int DSSDBG (char*) ;
 int FEAT_ALPHA_FIXED_ZORDER ;
 int FEAT_ALPHA_FREE_ZORDER ;
 int FEAT_ATTR2 ;
 int FEAT_CORE_CLK_DIV ;
 int FEAT_CPR ;
 int FEAT_FIR_COEF_V ;
 int FEAT_HANDLE_UV_SEPARATE ;
 int FEAT_MGR_LCD2 ;
 int FEAT_MGR_LCD3 ;
 int FEAT_PRELOAD ;
 int GLOBAL_ALPHA ;
 int IRQENABLE ;
 int LINE_NUMBER ;
 int OMAP_DSS_CHANNEL_DIGIT ;
 int OMAP_DSS_GFX ;
 int OVL_ACCU0 (int) ;
 int OVL_ACCU1 (int) ;
 int OVL_ACCU2_0 (int) ;
 int OVL_ACCU2_1 (int) ;
 int OVL_ATTRIBUTES (int) ;
 int OVL_ATTRIBUTES2 (int) ;
 int OVL_BA0 (int) ;
 int OVL_BA0_UV (int) ;
 int OVL_BA1 (int) ;
 int OVL_BA1_UV (int) ;
 int OVL_CONV_COEF (int,int) ;
 int OVL_FIFO_THRESHOLD (int) ;
 int OVL_FIR (int) ;
 int OVL_FIR2 (int) ;
 int OVL_FIR_COEF_H (int,int) ;
 int OVL_FIR_COEF_H2 (int,int) ;
 int OVL_FIR_COEF_HV (int,int) ;
 int OVL_FIR_COEF_HV2 (int,int) ;
 int OVL_FIR_COEF_V (int,int) ;
 int OVL_FIR_COEF_V2 (int,int) ;
 int OVL_PICTURE_SIZE (int) ;
 int OVL_PIXEL_INC (int) ;
 int OVL_POSITION (int) ;
 int OVL_PRELOAD (int) ;
 int OVL_ROW_INC (int) ;
 int OVL_SIZE (int) ;
 int OVL_TABLE_BA (int) ;
 int OVL_WINDOW_SKIP (int) ;
 int POL_FREQ (int) ;
 int RR (int ) ;
 int SIZE_MGR (int) ;
 int TIMING_H (int) ;
 int TIMING_V (int) ;
 int TRANS_COLOR (int) ;
 TYPE_1__ dispc ;
 int dispc_clear_irqstatus (int ) ;
 int dss_feat_get_num_mgrs () ;
 int dss_feat_get_num_ovls () ;
 scalar_t__ dss_has_feature (int ) ;

__attribute__((used)) static void dispc_restore_context(void)
{
 int i, j;

 DSSDBG("dispc_restore_context\n");

 if (!dispc.ctx_valid)
  return;



 RR(CONFIG);
 RR(LINE_NUMBER);
 if (dss_has_feature(FEAT_ALPHA_FIXED_ZORDER) ||
   dss_has_feature(FEAT_ALPHA_FREE_ZORDER))
  RR(GLOBAL_ALPHA);
 if (dss_has_feature(FEAT_MGR_LCD2))
  RR(CONFIG2);
 if (dss_has_feature(FEAT_MGR_LCD3))
  RR(CONFIG3);

 for (i = 0; i < dss_feat_get_num_mgrs(); i++) {
  RR(DEFAULT_COLOR(i));
  RR(TRANS_COLOR(i));
  RR(SIZE_MGR(i));
  if (i == OMAP_DSS_CHANNEL_DIGIT)
   continue;
  RR(TIMING_H(i));
  RR(TIMING_V(i));
  RR(POL_FREQ(i));
  RR(DIVISORo(i));

  RR(DATA_CYCLE1(i));
  RR(DATA_CYCLE2(i));
  RR(DATA_CYCLE3(i));

  if (dss_has_feature(FEAT_CPR)) {
   RR(CPR_COEF_R(i));
   RR(CPR_COEF_G(i));
   RR(CPR_COEF_B(i));
  }
 }

 for (i = 0; i < dss_feat_get_num_ovls(); i++) {
  RR(OVL_BA0(i));
  RR(OVL_BA1(i));
  RR(OVL_POSITION(i));
  RR(OVL_SIZE(i));
  RR(OVL_ATTRIBUTES(i));
  RR(OVL_FIFO_THRESHOLD(i));
  RR(OVL_ROW_INC(i));
  RR(OVL_PIXEL_INC(i));
  if (dss_has_feature(FEAT_PRELOAD))
   RR(OVL_PRELOAD(i));
  if (i == OMAP_DSS_GFX) {
   RR(OVL_WINDOW_SKIP(i));
   RR(OVL_TABLE_BA(i));
   continue;
  }
  RR(OVL_FIR(i));
  RR(OVL_PICTURE_SIZE(i));
  RR(OVL_ACCU0(i));
  RR(OVL_ACCU1(i));

  for (j = 0; j < 8; j++)
   RR(OVL_FIR_COEF_H(i, j));

  for (j = 0; j < 8; j++)
   RR(OVL_FIR_COEF_HV(i, j));

  for (j = 0; j < 5; j++)
   RR(OVL_CONV_COEF(i, j));

  if (dss_has_feature(FEAT_FIR_COEF_V)) {
   for (j = 0; j < 8; j++)
    RR(OVL_FIR_COEF_V(i, j));
  }

  if (dss_has_feature(FEAT_HANDLE_UV_SEPARATE)) {
   RR(OVL_BA0_UV(i));
   RR(OVL_BA1_UV(i));
   RR(OVL_FIR2(i));
   RR(OVL_ACCU2_0(i));
   RR(OVL_ACCU2_1(i));

   for (j = 0; j < 8; j++)
    RR(OVL_FIR_COEF_H2(i, j));

   for (j = 0; j < 8; j++)
    RR(OVL_FIR_COEF_HV2(i, j));

   for (j = 0; j < 8; j++)
    RR(OVL_FIR_COEF_V2(i, j));
  }
  if (dss_has_feature(FEAT_ATTR2))
   RR(OVL_ATTRIBUTES2(i));
 }

 if (dss_has_feature(FEAT_CORE_CLK_DIV))
  RR(DIVISOR);


 RR(CONTROL);
 if (dss_has_feature(FEAT_MGR_LCD2))
  RR(CONTROL2);
 if (dss_has_feature(FEAT_MGR_LCD3))
  RR(CONTROL3);

 dispc_clear_irqstatus(DISPC_IRQ_SYNC_LOST_DIGIT);





 RR(IRQENABLE);

 DSSDBG("context restored\n");
}

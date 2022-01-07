
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
 int SIZE_MGR (int) ;
 int SR (int ) ;
 int TIMING_H (int) ;
 int TIMING_V (int) ;
 int TRANS_COLOR (int) ;
 TYPE_1__ dispc ;
 int dss_feat_get_num_mgrs () ;
 int dss_feat_get_num_ovls () ;
 scalar_t__ dss_has_feature (int ) ;

__attribute__((used)) static void dispc_save_context(void)
{
 int i, j;

 DSSDBG("dispc_save_context\n");

 SR(IRQENABLE);
 SR(CONTROL);
 SR(CONFIG);
 SR(LINE_NUMBER);
 if (dss_has_feature(FEAT_ALPHA_FIXED_ZORDER) ||
   dss_has_feature(FEAT_ALPHA_FREE_ZORDER))
  SR(GLOBAL_ALPHA);
 if (dss_has_feature(FEAT_MGR_LCD2)) {
  SR(CONTROL2);
  SR(CONFIG2);
 }
 if (dss_has_feature(FEAT_MGR_LCD3)) {
  SR(CONTROL3);
  SR(CONFIG3);
 }

 for (i = 0; i < dss_feat_get_num_mgrs(); i++) {
  SR(DEFAULT_COLOR(i));
  SR(TRANS_COLOR(i));
  SR(SIZE_MGR(i));
  if (i == OMAP_DSS_CHANNEL_DIGIT)
   continue;
  SR(TIMING_H(i));
  SR(TIMING_V(i));
  SR(POL_FREQ(i));
  SR(DIVISORo(i));

  SR(DATA_CYCLE1(i));
  SR(DATA_CYCLE2(i));
  SR(DATA_CYCLE3(i));

  if (dss_has_feature(FEAT_CPR)) {
   SR(CPR_COEF_R(i));
   SR(CPR_COEF_G(i));
   SR(CPR_COEF_B(i));
  }
 }

 for (i = 0; i < dss_feat_get_num_ovls(); i++) {
  SR(OVL_BA0(i));
  SR(OVL_BA1(i));
  SR(OVL_POSITION(i));
  SR(OVL_SIZE(i));
  SR(OVL_ATTRIBUTES(i));
  SR(OVL_FIFO_THRESHOLD(i));
  SR(OVL_ROW_INC(i));
  SR(OVL_PIXEL_INC(i));
  if (dss_has_feature(FEAT_PRELOAD))
   SR(OVL_PRELOAD(i));
  if (i == OMAP_DSS_GFX) {
   SR(OVL_WINDOW_SKIP(i));
   SR(OVL_TABLE_BA(i));
   continue;
  }
  SR(OVL_FIR(i));
  SR(OVL_PICTURE_SIZE(i));
  SR(OVL_ACCU0(i));
  SR(OVL_ACCU1(i));

  for (j = 0; j < 8; j++)
   SR(OVL_FIR_COEF_H(i, j));

  for (j = 0; j < 8; j++)
   SR(OVL_FIR_COEF_HV(i, j));

  for (j = 0; j < 5; j++)
   SR(OVL_CONV_COEF(i, j));

  if (dss_has_feature(FEAT_FIR_COEF_V)) {
   for (j = 0; j < 8; j++)
    SR(OVL_FIR_COEF_V(i, j));
  }

  if (dss_has_feature(FEAT_HANDLE_UV_SEPARATE)) {
   SR(OVL_BA0_UV(i));
   SR(OVL_BA1_UV(i));
   SR(OVL_FIR2(i));
   SR(OVL_ACCU2_0(i));
   SR(OVL_ACCU2_1(i));

   for (j = 0; j < 8; j++)
    SR(OVL_FIR_COEF_H2(i, j));

   for (j = 0; j < 8; j++)
    SR(OVL_FIR_COEF_HV2(i, j));

   for (j = 0; j < 8; j++)
    SR(OVL_FIR_COEF_V2(i, j));
  }
  if (dss_has_feature(FEAT_ATTR2))
   SR(OVL_ATTRIBUTES2(i));
 }

 if (dss_has_feature(FEAT_CORE_CLK_DIV))
  SR(DIVISOR);

 dispc.ctx_valid = 1;

 DSSDBG("context saved\n");
}

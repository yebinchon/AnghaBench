
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int DUMPREG (int ) ;
 int VENC_AVID_START_STOP_X ;
 int VENC_AVID_START_STOP_Y ;
 int VENC_BLACK_LEVEL ;
 int VENC_BLANK_LEVEL ;
 int VENC_BSTAMP_WSS_DATA ;
 int VENC_CC_CARR_WSS_CARR ;
 int VENC_C_PHASE ;
 int VENC_FID_EXT_START_Y__FID_EXT_OFFSET_Y ;
 int VENC_FID_INT_OFFSET_Y__FID_EXT_START_X ;
 int VENC_FID_INT_START_X__FID_INT_START_Y ;
 int VENC_FLENS ;
 int VENC_FLEN__FAL ;
 int VENC_F_CONTROL ;
 int VENC_GAIN_U ;
 int VENC_GAIN_V ;
 int VENC_GAIN_Y ;
 int VENC_GEN_CTRL ;
 int VENC_HFLTR_CTRL ;
 int VENC_HS_EXT_START_STOP_X ;
 int VENC_HS_INT_START_STOP_X ;
 int VENC_HTRIGGER_VTRIGGER ;
 int VENC_L21__WC_CTL ;
 int VENC_LAL__PHASE_RESET ;
 int VENC_LINE21 ;
 int VENC_LLEN ;
 int VENC_LN_SEL ;
 int VENC_M_CONTROL ;
 int VENC_OUTPUT_CONTROL ;
 int VENC_OUTPUT_TEST ;
 int VENC_SAVID__EAVID ;
 int VENC_SYNC_CTRL ;
 int VENC_S_CARR ;
 int VENC_TVDETGP_INT_START_STOP_X ;
 int VENC_TVDETGP_INT_START_STOP_Y ;
 int VENC_VIDOUT_CTRL ;
 int VENC_VS_EXT_STOP_X__VS_EXT_START_Y ;
 int VENC_VS_EXT_STOP_Y ;
 int VENC_VS_INT_START_X ;
 int VENC_VS_INT_STOP_X__VS_INT_START_Y ;
 int VENC_VS_INT_STOP_Y__VS_EXT_START_X ;
 int VENC_X_COLOR ;
 scalar_t__ venc_runtime_get () ;
 int venc_runtime_put () ;

__attribute__((used)) static void venc_dump_regs(struct seq_file *s)
{


 if (venc_runtime_get())
  return;

 seq_printf(s, "%-35s %08x\n", "VENC_F_CONTROL", venc_read_reg(VENC_F_CONTROL));
 seq_printf(s, "%-35s %08x\n", "VENC_VIDOUT_CTRL", venc_read_reg(VENC_VIDOUT_CTRL));
 seq_printf(s, "%-35s %08x\n", "VENC_SYNC_CTRL", venc_read_reg(VENC_SYNC_CTRL));
 seq_printf(s, "%-35s %08x\n", "VENC_LLEN", venc_read_reg(VENC_LLEN));
 seq_printf(s, "%-35s %08x\n", "VENC_FLENS", venc_read_reg(VENC_FLENS));
 seq_printf(s, "%-35s %08x\n", "VENC_HFLTR_CTRL", venc_read_reg(VENC_HFLTR_CTRL));
 seq_printf(s, "%-35s %08x\n", "VENC_CC_CARR_WSS_CARR", venc_read_reg(VENC_CC_CARR_WSS_CARR));
 seq_printf(s, "%-35s %08x\n", "VENC_C_PHASE", venc_read_reg(VENC_C_PHASE));
 seq_printf(s, "%-35s %08x\n", "VENC_GAIN_U", venc_read_reg(VENC_GAIN_U));
 seq_printf(s, "%-35s %08x\n", "VENC_GAIN_V", venc_read_reg(VENC_GAIN_V));
 seq_printf(s, "%-35s %08x\n", "VENC_GAIN_Y", venc_read_reg(VENC_GAIN_Y));
 seq_printf(s, "%-35s %08x\n", "VENC_BLACK_LEVEL", venc_read_reg(VENC_BLACK_LEVEL));
 seq_printf(s, "%-35s %08x\n", "VENC_BLANK_LEVEL", venc_read_reg(VENC_BLANK_LEVEL));
 seq_printf(s, "%-35s %08x\n", "VENC_X_COLOR", venc_read_reg(VENC_X_COLOR));
 seq_printf(s, "%-35s %08x\n", "VENC_M_CONTROL", venc_read_reg(VENC_M_CONTROL));
 seq_printf(s, "%-35s %08x\n", "VENC_BSTAMP_WSS_DATA", venc_read_reg(VENC_BSTAMP_WSS_DATA));
 seq_printf(s, "%-35s %08x\n", "VENC_S_CARR", venc_read_reg(VENC_S_CARR));
 seq_printf(s, "%-35s %08x\n", "VENC_LINE21", venc_read_reg(VENC_LINE21));
 seq_printf(s, "%-35s %08x\n", "VENC_LN_SEL", venc_read_reg(VENC_LN_SEL));
 seq_printf(s, "%-35s %08x\n", "VENC_L21__WC_CTL", venc_read_reg(VENC_L21__WC_CTL));
 seq_printf(s, "%-35s %08x\n", "VENC_HTRIGGER_VTRIGGER", venc_read_reg(VENC_HTRIGGER_VTRIGGER));
 seq_printf(s, "%-35s %08x\n", "VENC_SAVID__EAVID", venc_read_reg(VENC_SAVID__EAVID));
 seq_printf(s, "%-35s %08x\n", "VENC_FLEN__FAL", venc_read_reg(VENC_FLEN__FAL));
 seq_printf(s, "%-35s %08x\n", "VENC_LAL__PHASE_RESET", venc_read_reg(VENC_LAL__PHASE_RESET));
 seq_printf(s, "%-35s %08x\n", "VENC_HS_INT_START_STOP_X", venc_read_reg(VENC_HS_INT_START_STOP_X));
 seq_printf(s, "%-35s %08x\n", "VENC_HS_EXT_START_STOP_X", venc_read_reg(VENC_HS_EXT_START_STOP_X));
 seq_printf(s, "%-35s %08x\n", "VENC_VS_INT_START_X", venc_read_reg(VENC_VS_INT_START_X));
 seq_printf(s, "%-35s %08x\n", "VENC_VS_INT_STOP_X__VS_INT_START_Y", venc_read_reg(VENC_VS_INT_STOP_X__VS_INT_START_Y));
 seq_printf(s, "%-35s %08x\n", "VENC_VS_INT_STOP_Y__VS_EXT_START_X", venc_read_reg(VENC_VS_INT_STOP_Y__VS_EXT_START_X));
 seq_printf(s, "%-35s %08x\n", "VENC_VS_EXT_STOP_X__VS_EXT_START_Y", venc_read_reg(VENC_VS_EXT_STOP_X__VS_EXT_START_Y));
 seq_printf(s, "%-35s %08x\n", "VENC_VS_EXT_STOP_Y", venc_read_reg(VENC_VS_EXT_STOP_Y));
 seq_printf(s, "%-35s %08x\n", "VENC_AVID_START_STOP_X", venc_read_reg(VENC_AVID_START_STOP_X));
 seq_printf(s, "%-35s %08x\n", "VENC_AVID_START_STOP_Y", venc_read_reg(VENC_AVID_START_STOP_Y));
 seq_printf(s, "%-35s %08x\n", "VENC_FID_INT_START_X__FID_INT_START_Y", venc_read_reg(VENC_FID_INT_START_X__FID_INT_START_Y));
 seq_printf(s, "%-35s %08x\n", "VENC_FID_INT_OFFSET_Y__FID_EXT_START_X", venc_read_reg(VENC_FID_INT_OFFSET_Y__FID_EXT_START_X));
 seq_printf(s, "%-35s %08x\n", "VENC_FID_EXT_START_Y__FID_EXT_OFFSET_Y", venc_read_reg(VENC_FID_EXT_START_Y__FID_EXT_OFFSET_Y));
 seq_printf(s, "%-35s %08x\n", "VENC_TVDETGP_INT_START_STOP_X", venc_read_reg(VENC_TVDETGP_INT_START_STOP_X));
 seq_printf(s, "%-35s %08x\n", "VENC_TVDETGP_INT_START_STOP_Y", venc_read_reg(VENC_TVDETGP_INT_START_STOP_Y));
 seq_printf(s, "%-35s %08x\n", "VENC_GEN_CTRL", venc_read_reg(VENC_GEN_CTRL));
 seq_printf(s, "%-35s %08x\n", "VENC_OUTPUT_CONTROL", venc_read_reg(VENC_OUTPUT_CONTROL));
 seq_printf(s, "%-35s %08x\n", "VENC_OUTPUT_TEST", venc_read_reg(VENC_OUTPUT_TEST));

 venc_runtime_put();


}

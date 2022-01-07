
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssusb_mtk {int uwk_vers; int uwk_reg_base; int uwk; } ;


 int PERI_SSUSB_SPM_CTRL ;
 int PERI_WK_CTRL1 ;
 int SSC_IP_SLEEP_EN ;
 int SSC_SPM_INT_EN ;


 int WC1_IS_C (int) ;
 int WC1_IS_EN ;
 int WC1_IS_P ;
 int regmap_update_bits (int ,int,int,int) ;

__attribute__((used)) static void ssusb_wakeup_ip_sleep_set(struct ssusb_mtk *ssusb, bool enable)
{
 u32 reg, msk, val;

 switch (ssusb->uwk_vers) {
 case 129:
  reg = ssusb->uwk_reg_base + PERI_WK_CTRL1;
  msk = WC1_IS_EN | WC1_IS_C(0xf) | WC1_IS_P;
  val = enable ? (WC1_IS_EN | WC1_IS_C(0x8)) : 0;
  break;
 case 128:
  reg = ssusb->uwk_reg_base + PERI_SSUSB_SPM_CTRL;
  msk = SSC_IP_SLEEP_EN | SSC_SPM_INT_EN;
  val = enable ? msk : 0;
  break;
 default:
  return;
 }
 regmap_update_bits(ssusb->uwk, reg, msk, val);
}

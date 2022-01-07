
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct axp288_chrg_info {int cc; int max_cc; int cv; int max_cv; TYPE_1__* pdev; int regmap; } ;
struct TYPE_2__ {int dev; } ;


 int AXP20X_CC_CTRL ;
 int AXP20X_CHRG_CTRL1 ;
 int AXP20X_CHRG_CTRL2 ;
 int AXP20X_V_HTF_CHRG ;
 int AXP20X_V_LTF_CHRG ;
 unsigned int CHRG_CCCV_CC_BIT_POS ;
 int CHRG_CCCV_CC_LSB_RES ;
 unsigned int CHRG_CCCV_CC_MASK ;
 int CHRG_CCCV_CC_OFFSET ;




 unsigned int CHRG_CCCV_CV_BIT_POS ;
 unsigned int CHRG_CCCV_CV_MASK ;
 int CHRG_CCCV_ITERM_20P ;
 int CHRG_VHTFC_45C ;
 int CHRG_VLTFC_0C ;
 int CNTL2_CHG_OUT_TURNON ;
 int CV_4100MV ;
 int CV_4150MV ;
 int CV_4200MV ;
 int CV_4350MV ;
 int FG_CNTL_OCV_ADJ_EN ;
 int dev_err (int *,char*,int ,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int charger_init_hw_regs(struct axp288_chrg_info *info)
{
 int ret, cc, cv;
 unsigned int val;


 ret = regmap_write(info->regmap, AXP20X_V_LTF_CHRG, CHRG_VLTFC_0C);
 if (ret < 0) {
  dev_err(&info->pdev->dev, "register(%x) write error(%d)\n",
       AXP20X_V_LTF_CHRG, ret);
  return ret;
 }

 ret = regmap_write(info->regmap, AXP20X_V_HTF_CHRG, CHRG_VHTFC_45C);
 if (ret < 0) {
  dev_err(&info->pdev->dev, "register(%x) write error(%d)\n",
       AXP20X_V_HTF_CHRG, ret);
  return ret;
 }


 ret = regmap_update_bits(info->regmap,
    AXP20X_CHRG_CTRL2,
    CNTL2_CHG_OUT_TURNON, CNTL2_CHG_OUT_TURNON);
 if (ret < 0) {
  dev_err(&info->pdev->dev, "register(%x) write error(%d)\n",
      AXP20X_CHRG_CTRL2, ret);
  return ret;
 }


 ret = regmap_update_bits(info->regmap,
    AXP20X_CHRG_CTRL1,
    CHRG_CCCV_ITERM_20P, 0);
 if (ret < 0) {
  dev_err(&info->pdev->dev, "register(%x) write error(%d)\n",
      AXP20X_CHRG_CTRL1, ret);
  return ret;
 }


 ret = regmap_update_bits(info->regmap,
    AXP20X_CC_CTRL,
    FG_CNTL_OCV_ADJ_EN, 0);
 if (ret < 0) {
  dev_err(&info->pdev->dev, "register(%x) write error(%d)\n",
      AXP20X_CC_CTRL, ret);
  return ret;
 }


 ret = regmap_read(info->regmap, AXP20X_CHRG_CTRL1, &val);
 if (ret < 0) {
  dev_err(&info->pdev->dev, "register(%x) read error(%d)\n",
   AXP20X_CHRG_CTRL1, ret);
  return ret;
 }


 cv = (val & CHRG_CCCV_CV_MASK) >> CHRG_CCCV_CV_BIT_POS;
 switch (cv) {
 case 131:
  info->cv = CV_4100MV;
  break;
 case 130:
  info->cv = CV_4150MV;
  break;
 case 129:
  info->cv = CV_4200MV;
  break;
 case 128:
  info->cv = CV_4350MV;
  break;
 }


 cc = (val & CHRG_CCCV_CC_MASK) >> CHRG_CCCV_CC_BIT_POS;
 cc = (cc * CHRG_CCCV_CC_LSB_RES) + CHRG_CCCV_CC_OFFSET;
 info->cc = cc;





 info->max_cv = info->cv;
 info->max_cc = info->cc;

 return 0;
}

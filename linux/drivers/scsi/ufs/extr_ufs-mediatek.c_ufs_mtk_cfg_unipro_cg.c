
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufs_hba {int dummy; } ;


 int RX_SYMBOL_CLK_GATE_EN ;
 int SYS_CLK_GATE_EN ;
 int TX_CLK_GATE_EN ;
 int TX_SYMBOL_CLK_REQ_FORCE ;
 int UIC_ARG_MIB (int ) ;
 int VS_DEBUGCLOCKENABLE ;
 int VS_SAVEPOWERCONTROL ;
 int ufshcd_dme_get (struct ufs_hba*,int ,int*) ;
 int ufshcd_dme_set (struct ufs_hba*,int ,int) ;

__attribute__((used)) static void ufs_mtk_cfg_unipro_cg(struct ufs_hba *hba, bool enable)
{
 u32 tmp;

 if (enable) {
  ufshcd_dme_get(hba,
          UIC_ARG_MIB(VS_SAVEPOWERCONTROL), &tmp);
  tmp = tmp |
        (1 << RX_SYMBOL_CLK_GATE_EN) |
        (1 << SYS_CLK_GATE_EN) |
        (1 << TX_CLK_GATE_EN);
  ufshcd_dme_set(hba,
          UIC_ARG_MIB(VS_SAVEPOWERCONTROL), tmp);

  ufshcd_dme_get(hba,
          UIC_ARG_MIB(VS_DEBUGCLOCKENABLE), &tmp);
  tmp = tmp & ~(1 << TX_SYMBOL_CLK_REQ_FORCE);
  ufshcd_dme_set(hba,
          UIC_ARG_MIB(VS_DEBUGCLOCKENABLE), tmp);
 } else {
  ufshcd_dme_get(hba,
          UIC_ARG_MIB(VS_SAVEPOWERCONTROL), &tmp);
  tmp = tmp & ~((1 << RX_SYMBOL_CLK_GATE_EN) |
         (1 << SYS_CLK_GATE_EN) |
         (1 << TX_CLK_GATE_EN));
  ufshcd_dme_set(hba,
          UIC_ARG_MIB(VS_SAVEPOWERCONTROL), tmp);

  ufshcd_dme_get(hba,
          UIC_ARG_MIB(VS_DEBUGCLOCKENABLE), &tmp);
  tmp = tmp | (1 << TX_SYMBOL_CLK_REQ_FORCE);
  ufshcd_dme_set(hba,
          UIC_ARG_MIB(VS_DEBUGCLOCKENABLE), tmp);
 }
}

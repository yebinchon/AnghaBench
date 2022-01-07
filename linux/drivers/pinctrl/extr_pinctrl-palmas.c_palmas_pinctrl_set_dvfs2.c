
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct palmas_pctrl_chip_info {int dev; int palmas; } ;


 int PALMAS_PRIMARY_SECONDARY_PAD3 ;
 int PALMAS_PRIMARY_SECONDARY_PAD3_DVFS2 ;
 int PALMAS_PU_PD_OD_BASE ;
 int dev_err (int ,char*,int) ;
 int palmas_update_bits (int ,int ,int ,int,int) ;

__attribute__((used)) static int palmas_pinctrl_set_dvfs2(struct palmas_pctrl_chip_info *pci,
  bool enable)
{
 int ret;
 int val;

 val = enable ? PALMAS_PRIMARY_SECONDARY_PAD3_DVFS2 : 0;
 ret = palmas_update_bits(pci->palmas, PALMAS_PU_PD_OD_BASE,
   PALMAS_PRIMARY_SECONDARY_PAD3,
   PALMAS_PRIMARY_SECONDARY_PAD3_DVFS2, val);
 if (ret < 0)
  dev_err(pci->dev, "SECONDARY_PAD3 update failed %d\n", ret);
 return ret;
}

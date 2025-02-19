
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct wl18xx_mac_and_phy_params {int dummy; } ;
struct wl1271 {int * ptable; int irq; } ;


 int BIT (int) ;
 int BUILD_BUG_ON (int) ;
 int DEBUG_BOOT ;
 int IRQ_TYPE_EDGE_FALLING ;
 int IRQ_TYPE_LEVEL_LOW ;
 int MEM_FDSP_CLK_120_DISABLE ;
 int MEM_FDSP_CLK_120_ENABLE ;
 int MEM_FDSP_CODERAM_FUNC_CLK_SEL ;
 size_t PART_BOOT ;
 size_t PART_PHY_INIT ;
 size_t PART_TOP_PRCM_ELP_SOC ;
 int REG_CHIP_ID_B ;
 int TOP_FN0_CCCR_REG_32 ;
 int WL18XX_EEPROMLESS_IND ;
 int WL18XX_PHY_FPGA_SPARE_1 ;
 int WL18XX_PHY_INIT_MEM_SIZE ;
 int WL18XX_SCR_PAD2 ;
 int irq_get_trigger_type (int ) ;
 int wl1271_debug (int ,char*,int ) ;
 int wl1271_info (char*,int) ;
 int wl18xx_top_reg_read (struct wl1271*,int ,int *) ;
 int wl18xx_top_reg_write (struct wl1271*,int ,int ) ;
 int wlcore_read32 (struct wl1271*,int ,int *) ;
 int wlcore_read_reg (struct wl1271*,int ,int *) ;
 int wlcore_set_partition (struct wl1271*,int *) ;
 int wlcore_write32 (struct wl1271*,int ,int ) ;

__attribute__((used)) static int wl18xx_pre_upload(struct wl1271 *wl)
{
 u32 tmp;
 int ret;
 u16 irq_invert;

 BUILD_BUG_ON(sizeof(struct wl18xx_mac_and_phy_params) >
  WL18XX_PHY_INIT_MEM_SIZE);

 ret = wlcore_set_partition(wl, &wl->ptable[PART_BOOT]);
 if (ret < 0)
  goto out;


 ret = wlcore_write32(wl, WL18XX_EEPROMLESS_IND, WL18XX_EEPROMLESS_IND);
 if (ret < 0)
  goto out;

 ret = wlcore_read_reg(wl, REG_CHIP_ID_B, &tmp);
 if (ret < 0)
  goto out;

 wl1271_debug(DEBUG_BOOT, "chip id 0x%x", tmp);

 ret = wlcore_read32(wl, WL18XX_SCR_PAD2, &tmp);
 if (ret < 0)
  goto out;
 ret = wlcore_set_partition(wl, &wl->ptable[PART_PHY_INIT]);
 if (ret < 0)
  goto out;


 ret = wlcore_write32(wl, WL18XX_PHY_FPGA_SPARE_1,
        MEM_FDSP_CLK_120_DISABLE);
 if (ret < 0)
  goto out;


 ret = wlcore_write32(wl, WL18XX_PHY_FPGA_SPARE_1,
        MEM_FDSP_CODERAM_FUNC_CLK_SEL);
 if (ret < 0)
  goto out;


 ret = wlcore_write32(wl, WL18XX_PHY_FPGA_SPARE_1,
        MEM_FDSP_CLK_120_ENABLE);
 if (ret < 0)
  goto out;

 ret = irq_get_trigger_type(wl->irq);
 if ((ret == IRQ_TYPE_LEVEL_LOW) || (ret == IRQ_TYPE_EDGE_FALLING)) {
  wl1271_info("using inverted interrupt logic: %d", ret);
  ret = wlcore_set_partition(wl,
        &wl->ptable[PART_TOP_PRCM_ELP_SOC]);
  if (ret < 0)
   goto out;

  ret = wl18xx_top_reg_read(wl, TOP_FN0_CCCR_REG_32, &irq_invert);
  if (ret < 0)
   goto out;

  irq_invert |= BIT(1);
  ret = wl18xx_top_reg_write(wl, TOP_FN0_CCCR_REG_32, irq_invert);
  if (ret < 0)
   goto out;

  ret = wlcore_set_partition(wl, &wl->ptable[PART_PHY_INIT]);
 }

out:
 return ret;
}

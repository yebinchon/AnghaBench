
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct cw1200_common {int hwbus_priv; TYPE_1__* hwbus_ops; int hw_type; int hw_revision; int ba_tx_tid_mask; int ba_rx_tid_mask; int hw_refclk; } ;
struct TYPE_2__ {int (* unlock ) (int ) ;int (* lock ) (int ) ;} ;


 int CW1200_CUT2_ID_ADDR ;

 int CW1200_CUT_22_ID_STR1 ;
 int CW1200_CUT_22_ID_STR2 ;
 int CW1200_CUT_22_ID_STR3 ;
 int CW1200_CUT_ID_ADDR ;
 int CW1200_HW_REV_CUT10 ;
 int CW1200_HW_REV_CUT11 ;
 int CW1200_HW_REV_CUT20 ;
 int CW1200_HW_REV_CUT22 ;
 int CW1X60_HW_REV ;
 int EINVAL ;
 int EIO ;
 int ENOTSUPP ;
 int ETIMEDOUT ;

 int ST90TDS_CONFIG_ACCESS_MODE_BIT ;
 int ST90TDS_CONFIG_REG_ID ;
 int ST90TDS_CONTROL_REG_ID ;
 int ST90TDS_CONT_RDY_BIT ;
 int ST90TDS_CONT_WUP_BIT ;
 int ST90TDS_TSET_GEN_R_W_REG_ID ;
 int __cw1200_irq_enable (struct cw1200_common*,int) ;
 int config_reg_read (struct cw1200_common*,int*) ;
 int config_reg_write (struct cw1200_common*,int) ;
 int cw1200_ahb_read_32 (struct cw1200_common*,int ,int*) ;
 int cw1200_dpll_from_clk (int ) ;
 int cw1200_get_hw_type (int,int*) ;
 int cw1200_load_firmware_cw1200 (struct cw1200_common*) ;
 int cw1200_reg_read_16 (struct cw1200_common*,int ,int*) ;
 int cw1200_reg_read_32 (struct cw1200_common*,int ,int*) ;
 int cw1200_reg_write_16 (struct cw1200_common*,int ,int) ;
 int cw1200_reg_write_32 (struct cw1200_common*,int ,int) ;
 int mdelay (int) ;
 int msleep (int) ;
 int pr_err (char*,...) ;
 int pr_info (char*) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int stub3 (int ) ;
 int stub4 (int ) ;

int cw1200_load_firmware(struct cw1200_common *priv)
{
 int ret;
 int i;
 u32 val32;
 u16 val16;
 int major_revision = -1;


 ret = cw1200_reg_read_32(priv, ST90TDS_CONFIG_REG_ID, &val32);
 if (ret < 0) {
  pr_err("Can't read config register.\n");
  goto out;
 }

 if (val32 == 0 || val32 == 0xffffffff) {
  pr_err("Bad config register value (0x%08x)\n", val32);
  ret = -EIO;
  goto out;
 }

 priv->hw_type = cw1200_get_hw_type(val32, &major_revision);
 if (priv->hw_type < 0) {
  pr_err("Can't deduce hardware type.\n");
  ret = -ENOTSUPP;
  goto out;
 }


 ret = cw1200_reg_write_32(priv, ST90TDS_TSET_GEN_R_W_REG_ID,
      cw1200_dpll_from_clk(priv->hw_refclk));
 if (ret < 0) {
  pr_err("Can't write DPLL register.\n");
  goto out;
 }

 msleep(20);

 ret = cw1200_reg_read_32(priv,
  ST90TDS_TSET_GEN_R_W_REG_ID, &val32);
 if (ret < 0) {
  pr_err("Can't read DPLL register.\n");
  goto out;
 }

 if (val32 != cw1200_dpll_from_clk(priv->hw_refclk)) {
  pr_err("Unable to initialise DPLL register. Wrote 0x%.8X, Read 0x%.8X.\n",
         cw1200_dpll_from_clk(priv->hw_refclk), val32);
  ret = -EIO;
  goto out;
 }


 ret = cw1200_reg_read_16(priv, ST90TDS_CONTROL_REG_ID, &val16);
 if (ret < 0) {
  pr_err("set_wakeup: can't read control register.\n");
  goto out;
 }

 ret = cw1200_reg_write_16(priv, ST90TDS_CONTROL_REG_ID,
  val16 | ST90TDS_CONT_WUP_BIT);
 if (ret < 0) {
  pr_err("set_wakeup: can't write control register.\n");
  goto out;
 }


 for (i = 0; i < 300; i += (1 + i / 2)) {
  ret = cw1200_reg_read_16(priv,
   ST90TDS_CONTROL_REG_ID, &val16);
  if (ret < 0) {
   pr_err("wait_for_wakeup: can't read control register.\n");
   goto out;
  }

  if (val16 & ST90TDS_CONT_RDY_BIT)
   break;

  msleep(i);
 }

 if ((val16 & ST90TDS_CONT_RDY_BIT) == 0) {
  pr_err("wait_for_wakeup: device is not responding.\n");
  ret = -ETIMEDOUT;
  goto out;
 }

 switch (major_revision) {
 case 1:

  ret = cw1200_ahb_read_32(priv, CW1200_CUT_ID_ADDR, &val32);
  if (ret) {
   pr_err("HW detection: can't read CUT ID.\n");
   goto out;
  }

  switch (val32) {
  case 129:
   pr_info("CW1x00 Cut 1.1 silicon detected.\n");
   priv->hw_revision = CW1200_HW_REV_CUT11;
   break;
  default:
   pr_info("CW1x00 Cut 1.0 silicon detected.\n");
   priv->hw_revision = CW1200_HW_REV_CUT10;
   break;
  }




  priv->ba_rx_tid_mask = 0;
  priv->ba_tx_tid_mask = 0;
  break;
 case 2: {
  u32 ar1, ar2, ar3;
  ret = cw1200_ahb_read_32(priv, CW1200_CUT2_ID_ADDR, &ar1);
  if (ret) {
   pr_err("(1) HW detection: can't read CUT ID\n");
   goto out;
  }
  ret = cw1200_ahb_read_32(priv, CW1200_CUT2_ID_ADDR + 4, &ar2);
  if (ret) {
   pr_err("(2) HW detection: can't read CUT ID.\n");
   goto out;
  }

  ret = cw1200_ahb_read_32(priv, CW1200_CUT2_ID_ADDR + 8, &ar3);
  if (ret) {
   pr_err("(3) HW detection: can't read CUT ID.\n");
   goto out;
  }

  if (ar1 == CW1200_CUT_22_ID_STR1 &&
      ar2 == CW1200_CUT_22_ID_STR2 &&
      ar3 == CW1200_CUT_22_ID_STR3) {
   pr_info("CW1x00 Cut 2.2 silicon detected.\n");
   priv->hw_revision = CW1200_HW_REV_CUT22;
  } else {
   pr_info("CW1x00 Cut 2.0 silicon detected.\n");
   priv->hw_revision = CW1200_HW_REV_CUT20;
  }
  break;
 }
 case 4:
  pr_info("CW1x60 silicon detected.\n");
  priv->hw_revision = CW1X60_HW_REV;
  break;
 default:
  pr_err("Unsupported silicon major revision %d.\n",
         major_revision);
  ret = -ENOTSUPP;
  goto out;
 }


 ret = config_reg_read(priv, &val32);
 if (ret < 0) {
  pr_err("Can't read config register.\n");
  goto out;
 }

 if (!(val32 & ST90TDS_CONFIG_ACCESS_MODE_BIT)) {
  pr_err("Device is already in QUEUE mode!\n");
  ret = -EINVAL;
  goto out;
 }

 switch (priv->hw_type) {
 case 128:
  if (priv->hw_revision == CW1X60_HW_REV) {
   pr_err("Can't handle CW1160/1260 firmware load yet.\n");
   ret = -ENOTSUPP;
   goto out;
  }
  ret = cw1200_load_firmware_cw1200(priv);
  break;
 default:
  pr_err("Can't perform firmware load for hw type %d.\n",
         priv->hw_type);
  ret = -ENOTSUPP;
  goto out;
 }
 if (ret < 0) {
  pr_err("Firmware load error.\n");
  goto out;
 }


 priv->hwbus_ops->lock(priv->hwbus_priv);
 ret = __cw1200_irq_enable(priv, 1);
 priv->hwbus_ops->unlock(priv->hwbus_priv);
 if (ret < 0)
  goto unsubscribe;


 ret = config_reg_read(priv, &val32);
 if (ret < 0) {
  pr_err("Can't read config register.\n");
  goto unsubscribe;
 }
 ret = config_reg_write(priv, val32 & ~ST90TDS_CONFIG_ACCESS_MODE_BIT);
 if (ret < 0) {
  pr_err("Can't write config register.\n");
  goto unsubscribe;
 }




 mdelay(10);
 config_reg_read(priv, &val32);

out:
 return ret;

unsubscribe:

 priv->hwbus_ops->lock(priv->hwbus_priv);
 ret = __cw1200_irq_enable(priv, 0);
 priv->hwbus_ops->unlock(priv->hwbus_priv);
 return ret;
}

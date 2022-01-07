
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct iss_csiphy {TYPE_1__* iss; int cfg_regs; } ;
struct TYPE_3__ {int dev; } ;


 int CSI2_COMPLEXIO_CFG ;
 int CSI2_COMPLEXIO_CFG_PWD_CMD_MASK ;
 int CSI2_COMPLEXIO_CFG_PWD_STATUS_MASK ;
 int CSI2_COMPLEXIO_CFG_PWR_AUTO ;
 int EBUSY ;
 int dev_err (int ,char*) ;
 int iss_reg_read (TYPE_1__*,int ,int ) ;
 int iss_reg_update (TYPE_1__*,int ,int ,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int csiphy_set_power(struct iss_csiphy *phy, u32 power)
{
 u32 reg;
 u8 retry_count;

 iss_reg_update(phy->iss, phy->cfg_regs, CSI2_COMPLEXIO_CFG,
         CSI2_COMPLEXIO_CFG_PWD_CMD_MASK,
         power | CSI2_COMPLEXIO_CFG_PWR_AUTO);

 retry_count = 0;
 do {
  udelay(1);
  reg = iss_reg_read(phy->iss, phy->cfg_regs, CSI2_COMPLEXIO_CFG)
      & CSI2_COMPLEXIO_CFG_PWD_STATUS_MASK;

  if (reg != power >> 2)
   retry_count++;

 } while ((reg != power >> 2) && (retry_count < 250));

 if (retry_count == 250) {
  dev_err(phy->iss->dev, "CSI2 CIO set power failed!\n");
  return -EBUSY;
 }

 return 0;
}

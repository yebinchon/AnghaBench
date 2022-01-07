
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qusb2_phy_cfg {int * regs; scalar_t__ update_tune1_with_efuse; } ;
struct qusb2_phy {int base; int cell; struct qusb2_phy_cfg* cfg; TYPE_1__* phy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int HSTX_TRIM_MASK ;
 int HSTX_TRIM_SHIFT ;
 scalar_t__ IS_ERR (int*) ;
 size_t QUSB2PHY_PORT_TUNE1 ;
 size_t QUSB2PHY_PORT_TUNE2 ;
 int dev_dbg (struct device*,char*) ;
 int* nvmem_cell_read (int ,int *) ;
 int qusb2_write_mask (int ,int ,int,int ) ;

__attribute__((used)) static void qusb2_phy_set_tune2_param(struct qusb2_phy *qphy)
{
 struct device *dev = &qphy->phy->dev;
 const struct qusb2_phy_cfg *cfg = qphy->cfg;
 u8 *val;


 if (!qphy->cell)
  return;
 val = nvmem_cell_read(qphy->cell, ((void*)0));
 if (IS_ERR(val) || !val[0]) {
  dev_dbg(dev, "failed to read a valid hs-tx trim value\n");
  return;
 }


 if (cfg->update_tune1_with_efuse)
  qusb2_write_mask(qphy->base, cfg->regs[QUSB2PHY_PORT_TUNE1],
     val[0] << HSTX_TRIM_SHIFT,
     HSTX_TRIM_MASK);
 else
  qusb2_write_mask(qphy->base, cfg->regs[QUSB2PHY_PORT_TUNE2],
     val[0] << HSTX_TRIM_SHIFT,
     HSTX_TRIM_MASK);
}

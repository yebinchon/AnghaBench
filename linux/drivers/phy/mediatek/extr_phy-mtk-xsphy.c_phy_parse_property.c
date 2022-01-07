
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xsphy_instance {int type; int efuse_rx_imp; int efuse_tx_imp; int efuse_intr; int eye_term; int eye_vrt; int eye_src; TYPE_1__* phy; } ;
struct mtk_xsphy {int dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;




 int dev_dbg (struct device*,char*,int ,int ,int ,...) ;
 int dev_err (int ,char*) ;
 int device_property_read_u32 (struct device*,char*,int *) ;

__attribute__((used)) static void phy_parse_property(struct mtk_xsphy *xsphy,
    struct xsphy_instance *inst)
{
 struct device *dev = &inst->phy->dev;

 switch (inst->type) {
 case 129:
  device_property_read_u32(dev, "mediatek,efuse-intr",
      &inst->efuse_intr);
  device_property_read_u32(dev, "mediatek,eye-src",
      &inst->eye_src);
  device_property_read_u32(dev, "mediatek,eye-vrt",
      &inst->eye_vrt);
  device_property_read_u32(dev, "mediatek,eye-term",
      &inst->eye_term);
  dev_dbg(dev, "intr:%d, src:%d, vrt:%d, term:%d\n",
   inst->efuse_intr, inst->eye_src,
   inst->eye_vrt, inst->eye_term);
  break;
 case 128:
  device_property_read_u32(dev, "mediatek,efuse-intr",
      &inst->efuse_intr);
  device_property_read_u32(dev, "mediatek,efuse-tx-imp",
      &inst->efuse_tx_imp);
  device_property_read_u32(dev, "mediatek,efuse-rx-imp",
      &inst->efuse_rx_imp);
  dev_dbg(dev, "intr:%d, tx-imp:%d, rx-imp:%d\n",
   inst->efuse_intr, inst->efuse_tx_imp,
   inst->efuse_rx_imp);
  break;
 default:
  dev_err(xsphy->dev, "incompatible phy type\n");
  return;
 }
}

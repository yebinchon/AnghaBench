
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_tphy {int dummy; } ;
struct mtk_phy_instance {scalar_t__ type; int eye_term; int eye_vrt; int eye_src; int bc12_en; TYPE_1__* phy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 scalar_t__ PHY_TYPE_USB2 ;
 int dev_dbg (struct device*,char*,int ,int ,int ,int ) ;
 int device_property_read_bool (struct device*,char*) ;
 int device_property_read_u32 (struct device*,char*,int *) ;

__attribute__((used)) static void phy_parse_property(struct mtk_tphy *tphy,
    struct mtk_phy_instance *instance)
{
 struct device *dev = &instance->phy->dev;

 if (instance->type != PHY_TYPE_USB2)
  return;

 instance->bc12_en = device_property_read_bool(dev, "mediatek,bc12");
 device_property_read_u32(dev, "mediatek,eye-src",
     &instance->eye_src);
 device_property_read_u32(dev, "mediatek,eye-vrt",
     &instance->eye_vrt);
 device_property_read_u32(dev, "mediatek,eye-term",
     &instance->eye_term);
 dev_dbg(dev, "bc12:%d, src:%d, vrt:%d, term:%d\n",
  instance->bc12_en, instance->eye_src,
  instance->eye_vrt, instance->eye_term);
}

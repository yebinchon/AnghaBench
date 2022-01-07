
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rockchip_usb2phy {TYPE_2__* phy_cfg; } ;
struct regmap {int dummy; } ;
struct TYPE_3__ {int idm_sink_en; int vdp_src_en; } ;
struct TYPE_4__ {TYPE_1__ chg_det; } ;


 struct regmap* get_reg_base (struct rockchip_usb2phy*) ;
 int property_enable (struct regmap*,int *,int) ;

__attribute__((used)) static void rockchip_chg_enable_primary_det(struct rockchip_usb2phy *rphy,
         bool en)
{
 struct regmap *base = get_reg_base(rphy);

 property_enable(base, &rphy->phy_cfg->chg_det.vdp_src_en, en);
 property_enable(base, &rphy->phy_cfg->chg_det.idm_sink_en, en);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wifi_only_cfg {scalar_t__ adapter; } ;
struct rtl_priv {int hw; } ;


 int rtl_set_bbreg (int ,int ,int ,int ) ;

__attribute__((used)) static inline
void halwifionly_phy_set_bb_reg(struct wifi_only_cfg *wifi_conly_cfg,
    u32 regaddr, u32 bitmask, u32 data)
{
 struct rtl_priv *rtlpriv = (struct rtl_priv *)wifi_conly_cfg->adapter;

 rtl_set_bbreg(rtlpriv->hw, regaddr, bitmask, data);
}

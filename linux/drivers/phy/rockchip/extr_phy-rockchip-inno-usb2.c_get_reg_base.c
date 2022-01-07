
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_usb2phy {struct regmap* usbgrf; struct regmap* grf; } ;
struct regmap {int dummy; } ;



__attribute__((used)) static inline struct regmap *get_reg_base(struct rockchip_usb2phy *rphy)
{
 return rphy->usbgrf == ((void*)0) ? rphy->grf : rphy->usbgrf;
}

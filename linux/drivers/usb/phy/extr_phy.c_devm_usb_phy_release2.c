
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_devm {int phy; scalar_t__ nb; } ;
struct device {int dummy; } ;


 int usb_put_phy (int ) ;
 int usb_unregister_notifier (int ,scalar_t__) ;

__attribute__((used)) static void devm_usb_phy_release2(struct device *dev, void *_res)
{
 struct phy_devm *res = _res;

 if (res->nb)
  usb_unregister_notifier(res->phy, res->nb);
 usb_put_phy(res->phy);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void usb_phy ;
struct device {int dummy; } ;



__attribute__((used)) static int devm_usb_phy_match(struct device *dev, void *res, void *match_data)
{
 struct usb_phy **phy = res;

 return *phy == match_data;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct miphy28lp_phy {int type; struct miphy28lp_dev* phydev; } ;
struct miphy28lp_dev {int miphy_mutex; } ;


 int EINVAL ;



 int miphy28lp_init_pcie (struct miphy28lp_phy*) ;
 int miphy28lp_init_sata (struct miphy28lp_phy*) ;
 int miphy28lp_init_usb3 (struct miphy28lp_phy*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct miphy28lp_phy* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int miphy28lp_init(struct phy *phy)
{
 struct miphy28lp_phy *miphy_phy = phy_get_drvdata(phy);
 struct miphy28lp_dev *miphy_dev = miphy_phy->phydev;
 int ret;

 mutex_lock(&miphy_dev->miphy_mutex);

 switch (miphy_phy->type) {

 case 129:
  ret = miphy28lp_init_sata(miphy_phy);
  break;
 case 130:
  ret = miphy28lp_init_pcie(miphy_phy);
  break;
 case 128:
  ret = miphy28lp_init_usb3(miphy_phy);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 mutex_unlock(&miphy_dev->miphy_mutex);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qusb2_phy {int mode; } ;
struct phy {int dummy; } ;
typedef enum phy_mode { ____Placeholder_phy_mode } phy_mode ;


 struct qusb2_phy* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int qusb2_phy_set_mode(struct phy *phy,
         enum phy_mode mode, int submode)
{
 struct qusb2_phy *qphy = phy_get_drvdata(phy);

 qphy->mode = mode;

 return 0;
}

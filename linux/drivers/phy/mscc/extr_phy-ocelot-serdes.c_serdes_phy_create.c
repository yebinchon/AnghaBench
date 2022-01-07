
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct serdes_macro {int port; struct serdes_ctrl* ctrl; int idx; } ;
struct serdes_ctrl {int dev; } ;
struct phy {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct phy*) ;
 int PTR_ERR (struct phy*) ;
 struct serdes_macro* devm_kzalloc (int ,int,int ) ;
 struct phy* devm_phy_create (int ,int *,int *) ;
 int phy_set_drvdata (struct phy*,struct serdes_macro*) ;
 int serdes_ops ;

__attribute__((used)) static int serdes_phy_create(struct serdes_ctrl *ctrl, u8 idx, struct phy **phy)
{
 struct serdes_macro *macro;

 *phy = devm_phy_create(ctrl->dev, ((void*)0), &serdes_ops);
 if (IS_ERR(*phy))
  return PTR_ERR(*phy);

 macro = devm_kzalloc(ctrl->dev, sizeof(*macro), GFP_KERNEL);
 if (!macro)
  return -ENOMEM;

 macro->idx = idx;
 macro->ctrl = ctrl;
 macro->port = -1;

 phy_set_drvdata(*phy, macro);

 return 0;
}

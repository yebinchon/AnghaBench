
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_xusb_padctl {int dummy; } ;
struct tegra_xusb_pad_soc {int dummy; } ;
struct tegra_xusb_pad {int dev; struct tegra_xusb_pad_soc const* soc; int * ops; } ;
struct tegra_xusb_hsic_pad {struct tegra_xusb_pad base; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 struct tegra_xusb_pad* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int dev_set_drvdata (int *,struct tegra_xusb_pad*) ;
 int device_unregister (int *) ;
 int kfree (struct tegra_xusb_hsic_pad*) ;
 struct tegra_xusb_hsic_pad* kzalloc (int,int ) ;
 int tegra124_hsic_lane_ops ;
 int tegra124_hsic_phy_ops ;
 int tegra_xusb_pad_init (struct tegra_xusb_pad*,struct tegra_xusb_padctl*,struct device_node*) ;
 int tegra_xusb_pad_register (struct tegra_xusb_pad*,int *) ;

__attribute__((used)) static struct tegra_xusb_pad *
tegra124_hsic_pad_probe(struct tegra_xusb_padctl *padctl,
   const struct tegra_xusb_pad_soc *soc,
   struct device_node *np)
{
 struct tegra_xusb_hsic_pad *hsic;
 struct tegra_xusb_pad *pad;
 int err;

 hsic = kzalloc(sizeof(*hsic), GFP_KERNEL);
 if (!hsic)
  return ERR_PTR(-ENOMEM);

 pad = &hsic->base;
 pad->ops = &tegra124_hsic_lane_ops;
 pad->soc = soc;

 err = tegra_xusb_pad_init(pad, padctl, np);
 if (err < 0) {
  kfree(hsic);
  goto out;
 }

 err = tegra_xusb_pad_register(pad, &tegra124_hsic_phy_ops);
 if (err < 0)
  goto unregister;

 dev_set_drvdata(&pad->dev, pad);

 return pad;

unregister:
 device_unregister(&pad->dev);
out:
 return ERR_PTR(err);
}

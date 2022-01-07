
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_xusb_pad {int dev; struct tegra_xusb_pad_soc const* soc; int * ops; } ;
struct tegra_xusb_usb2_pad {struct tegra_xusb_pad base; } ;
struct tegra_xusb_padctl {int dummy; } ;
struct tegra_xusb_pad_soc {int dummy; } ;
struct tegra186_xusb_padctl {int usb2_trk_clk; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 struct tegra_xusb_pad* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_dbg (int *,char*,int) ;
 int dev_set_drvdata (int *,struct tegra_xusb_pad*) ;
 int device_unregister (int *) ;
 int devm_clk_get (int *,char*) ;
 int kfree (struct tegra_xusb_usb2_pad*) ;
 struct tegra_xusb_usb2_pad* kzalloc (int,int ) ;
 int tegra186_usb2_lane_ops ;
 int tegra_xusb_pad_init (struct tegra_xusb_pad*,struct tegra_xusb_padctl*,struct device_node*) ;
 int tegra_xusb_pad_register (struct tegra_xusb_pad*,int *) ;
 struct tegra186_xusb_padctl* to_tegra186_xusb_padctl (struct tegra_xusb_padctl*) ;
 int utmi_phy_ops ;

__attribute__((used)) static struct tegra_xusb_pad *
tegra186_usb2_pad_probe(struct tegra_xusb_padctl *padctl,
   const struct tegra_xusb_pad_soc *soc,
   struct device_node *np)
{
 struct tegra186_xusb_padctl *priv = to_tegra186_xusb_padctl(padctl);
 struct tegra_xusb_usb2_pad *usb2;
 struct tegra_xusb_pad *pad;
 int err;

 usb2 = kzalloc(sizeof(*usb2), GFP_KERNEL);
 if (!usb2)
  return ERR_PTR(-ENOMEM);

 pad = &usb2->base;
 pad->ops = &tegra186_usb2_lane_ops;
 pad->soc = soc;

 err = tegra_xusb_pad_init(pad, padctl, np);
 if (err < 0) {
  kfree(usb2);
  goto out;
 }

 priv->usb2_trk_clk = devm_clk_get(&pad->dev, "trk");
 if (IS_ERR(priv->usb2_trk_clk)) {
  err = PTR_ERR(priv->usb2_trk_clk);
  dev_dbg(&pad->dev, "failed to get usb2 trk clock: %d\n", err);
  goto unregister;
 }

 err = tegra_xusb_pad_register(pad, &utmi_phy_ops);
 if (err < 0)
  goto unregister;

 dev_set_drvdata(&pad->dev, pad);

 return pad;

unregister:
 device_unregister(&pad->dev);
out:
 return ERR_PTR(err);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_xusb_padctl_soc {int dummy; } ;
struct tegra_xusb_padctl {struct tegra_xusb_padctl_soc const* soc; struct device* dev; } ;
struct tegra210_xusb_padctl {struct tegra_xusb_padctl base; int fuse; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct tegra_xusb_padctl* ERR_PTR (int) ;
 int GFP_KERNEL ;
 struct tegra210_xusb_padctl* devm_kzalloc (struct device*,int,int ) ;
 int tegra210_xusb_read_fuse_calibration (int *) ;

__attribute__((used)) static struct tegra_xusb_padctl *
tegra210_xusb_padctl_probe(struct device *dev,
      const struct tegra_xusb_padctl_soc *soc)
{
 struct tegra210_xusb_padctl *padctl;
 int err;

 padctl = devm_kzalloc(dev, sizeof(*padctl), GFP_KERNEL);
 if (!padctl)
  return ERR_PTR(-ENOMEM);

 padctl->base.dev = dev;
 padctl->base.soc = soc;

 err = tegra210_xusb_read_fuse_calibration(&padctl->fuse);
 if (err < 0)
  return ERR_PTR(err);

 return &padctl->base;
}

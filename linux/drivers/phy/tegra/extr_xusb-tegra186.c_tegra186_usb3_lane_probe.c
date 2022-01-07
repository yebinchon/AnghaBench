
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_xusb_lane {unsigned int index; struct device_node* np; struct tegra_xusb_pad* pad; int * soc; int list; } ;
struct tegra_xusb_usb3_lane {struct tegra_xusb_lane base; } ;
struct tegra_xusb_pad {TYPE_1__* soc; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int * lanes; } ;


 int ENOMEM ;
 struct tegra_xusb_lane* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct tegra_xusb_usb3_lane*) ;
 struct tegra_xusb_usb3_lane* kzalloc (int,int ) ;
 int tegra_xusb_lane_parse_dt (struct tegra_xusb_lane*,struct device_node*) ;

__attribute__((used)) static struct tegra_xusb_lane *
tegra186_usb3_lane_probe(struct tegra_xusb_pad *pad, struct device_node *np,
    unsigned int index)
{
 struct tegra_xusb_usb3_lane *usb3;
 int err;

 usb3 = kzalloc(sizeof(*usb3), GFP_KERNEL);
 if (!usb3)
  return ERR_PTR(-ENOMEM);

 INIT_LIST_HEAD(&usb3->base.list);
 usb3->base.soc = &pad->soc->lanes[index];
 usb3->base.index = index;
 usb3->base.pad = pad;
 usb3->base.np = np;

 err = tegra_xusb_lane_parse_dt(&usb3->base, np);
 if (err < 0) {
  kfree(usb3);
  return ERR_PTR(err);
 }

 return &usb3->base;
}

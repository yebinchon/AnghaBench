
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl8xxxu_priv {int chip_cut; int mac_addr; int chip_name; int hi_pa; int has_gps; int has_bluetooth; int has_wifi; int ep_tx_count; int rx_paths; int tx_paths; int chip_vendor; TYPE_1__* udev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int dev_info (struct device*,char*,int ,char*,...) ;

__attribute__((used)) static void rtl8xxxu_print_chipinfo(struct rtl8xxxu_priv *priv)
{
 struct device *dev = &priv->udev->dev;
 char *cut;

 switch (priv->chip_cut) {
 case 0:
  cut = "A";
  break;
 case 1:
  cut = "B";
  break;
 case 2:
  cut = "C";
  break;
 case 3:
  cut = "D";
  break;
 case 4:
  cut = "E";
  break;
 default:
  cut = "unknown";
 }

 dev_info(dev,
   "RTL%s rev %s (%s) %iT%iR, TX queues %i, WiFi=%i, BT=%i, GPS=%i, HI PA=%i\n",
   priv->chip_name, cut, priv->chip_vendor, priv->tx_paths,
   priv->rx_paths, priv->ep_tx_count, priv->has_wifi,
   priv->has_bluetooth, priv->has_gps, priv->hi_pa);

 dev_info(dev, "RTL%s MAC: %pM\n", priv->chip_name, priv->mac_addr);
}

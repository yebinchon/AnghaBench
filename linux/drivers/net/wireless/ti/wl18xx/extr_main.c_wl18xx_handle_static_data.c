
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl18xx_static_data_priv {int phy_version; } ;
struct wl1271_static_data {scalar_t__ priv; } ;
struct TYPE_2__ {char* phy_fw_ver_str; } ;
struct wl1271 {TYPE_1__ chip; } ;


 int strncpy (char*,int ,int) ;
 int wl1271_info (char*,int ) ;

__attribute__((used)) static int wl18xx_handle_static_data(struct wl1271 *wl,
         struct wl1271_static_data *static_data)
{
 struct wl18xx_static_data_priv *static_data_priv =
  (struct wl18xx_static_data_priv *) static_data->priv;

 strncpy(wl->chip.phy_fw_ver_str, static_data_priv->phy_version,
  sizeof(wl->chip.phy_fw_ver_str));


 wl->chip.phy_fw_ver_str[sizeof(wl->chip.phy_fw_ver_str) - 1] = '\0';

 wl1271_info("PHY firmware version: %s", static_data_priv->phy_version);

 return 0;
}

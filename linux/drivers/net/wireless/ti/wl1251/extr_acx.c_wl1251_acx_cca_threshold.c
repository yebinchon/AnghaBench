
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int dummy; } ;
struct acx_energy_detection {scalar_t__ tx_energy_detection; int rx_cca_threshold; } ;


 int ACX_CCA_THRESHOLD ;
 int CCA_THRSH_DISABLE_ENERGY_D ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct acx_energy_detection*) ;
 struct acx_energy_detection* kzalloc (int,int ) ;
 int wl1251_cmd_configure (struct wl1251*,int ,struct acx_energy_detection*,int) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_warning (char*,int) ;

int wl1251_acx_cca_threshold(struct wl1251 *wl)
{
 struct acx_energy_detection *detection;
 int ret;

 wl1251_debug(DEBUG_ACX, "acx cca threshold");

 detection = kzalloc(sizeof(*detection), GFP_KERNEL);
 if (!detection)
  return -ENOMEM;

 detection->rx_cca_threshold = CCA_THRSH_DISABLE_ENERGY_D;
 detection->tx_energy_detection = 0;

 ret = wl1251_cmd_configure(wl, ACX_CCA_THRESHOLD,
       detection, sizeof(*detection));
 if (ret < 0)
  wl1251_warning("failed to set cca threshold: %d", ret);

 kfree(detection);
 return ret;
}

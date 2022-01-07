
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl12xx_conf_rf {int tx_per_channel_power_compensation_5; int tx_per_channel_power_compensation_2; } ;
struct TYPE_4__ {struct wl12xx_conf_rf rf; } ;
struct wl12xx_priv {TYPE_2__ conf; } ;
struct TYPE_3__ {int id; } ;
struct wl1271_ext_radio_parms_cmd {int tx_per_channel_power_compensation_5; int tx_per_channel_power_compensation_2; TYPE_1__ test; } ;
struct wl1271 {int nvs; struct wl12xx_priv* priv; } ;


 int CONF_TX_PWR_COMPENSATION_LEN_2 ;
 int CONF_TX_PWR_COMPENSATION_LEN_5 ;
 int DEBUG_CMD ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int TEST_CMD_INI_FILE_RF_EXTENDED_PARAM ;
 int kfree (struct wl1271_ext_radio_parms_cmd*) ;
 struct wl1271_ext_radio_parms_cmd* kzalloc (int,int ) ;
 int memcpy (int ,int ,int ) ;
 int wl1271_cmd_test (struct wl1271*,struct wl1271_ext_radio_parms_cmd*,int,int ) ;
 int wl1271_dump (int ,char*,struct wl1271_ext_radio_parms_cmd*,int) ;
 int wl1271_warning (char*) ;

int wl1271_cmd_ext_radio_parms(struct wl1271 *wl)
{
 struct wl1271_ext_radio_parms_cmd *ext_radio_parms;
 struct wl12xx_priv *priv = wl->priv;
 struct wl12xx_conf_rf *rf = &priv->conf.rf;
 int ret;

 if (!wl->nvs)
  return -ENODEV;

 ext_radio_parms = kzalloc(sizeof(*ext_radio_parms), GFP_KERNEL);
 if (!ext_radio_parms)
  return -ENOMEM;

 ext_radio_parms->test.id = TEST_CMD_INI_FILE_RF_EXTENDED_PARAM;

 memcpy(ext_radio_parms->tx_per_channel_power_compensation_2,
        rf->tx_per_channel_power_compensation_2,
        CONF_TX_PWR_COMPENSATION_LEN_2);
 memcpy(ext_radio_parms->tx_per_channel_power_compensation_5,
        rf->tx_per_channel_power_compensation_5,
        CONF_TX_PWR_COMPENSATION_LEN_5);

 wl1271_dump(DEBUG_CMD, "TEST_CMD_INI_FILE_EXT_RADIO_PARAM: ",
      ext_radio_parms, sizeof(*ext_radio_parms));

 ret = wl1271_cmd_test(wl, ext_radio_parms, sizeof(*ext_radio_parms), 0);
 if (ret < 0)
  wl1271_warning("TEST_CMD_INI_FILE_RF_EXTENDED_PARAM failed");

 kfree(ext_radio_parms);
 return ret;
}

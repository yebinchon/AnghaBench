
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
struct wl128x_radio_parms_cmd {int fem_vendor_and_options; int dyn_params_5; int static_params_5; int dyn_params_2; int static_params_2; TYPE_1__ test; } ;
struct wl128x_ini_general_params {int tx_bip_fem_manufacturer; } ;
struct wl128x_nvs_file {int fem_vendor_and_options; TYPE_3__* dyn_radio_params_5; int stat_radio_params_5; TYPE_2__* dyn_radio_params_2; int stat_radio_params_2; struct wl128x_ini_general_params general_params; } ;
struct wl128x_ini_fem_params_5 {int dummy; } ;
struct wl128x_ini_fem_params_2 {int dummy; } ;
struct wl128x_ini_band_params_5 {int dummy; } ;
struct wl128x_ini_band_params_2 {int dummy; } ;
struct wl1271 {scalar_t__ nvs; } ;
struct TYPE_6__ {int params; } ;
struct TYPE_5__ {int params; } ;


 int DEBUG_CMD ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int TEST_CMD_INI_FILE_RADIO_PARAM ;
 int WL12XX_FEM_TO_NVS_ENTRY (int ) ;
 int kfree (struct wl128x_radio_parms_cmd*) ;
 struct wl128x_radio_parms_cmd* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int wl1271_cmd_test (struct wl1271*,struct wl128x_radio_parms_cmd*,int,int ) ;
 int wl1271_dump (int ,char*,struct wl128x_radio_parms_cmd*,int) ;
 int wl1271_warning (char*) ;

int wl128x_cmd_radio_parms(struct wl1271 *wl)
{
 struct wl128x_nvs_file *nvs = (struct wl128x_nvs_file *)wl->nvs;
 struct wl128x_radio_parms_cmd *radio_parms;
 struct wl128x_ini_general_params *gp = &nvs->general_params;
 int ret, fem_idx;

 if (!wl->nvs)
  return -ENODEV;

 radio_parms = kzalloc(sizeof(*radio_parms), GFP_KERNEL);
 if (!radio_parms)
  return -ENOMEM;

 radio_parms->test.id = TEST_CMD_INI_FILE_RADIO_PARAM;

 fem_idx = WL12XX_FEM_TO_NVS_ENTRY(gp->tx_bip_fem_manufacturer);


 memcpy(&radio_parms->static_params_2, &nvs->stat_radio_params_2,
        sizeof(struct wl128x_ini_band_params_2));
 memcpy(&radio_parms->dyn_params_2,
        &nvs->dyn_radio_params_2[fem_idx].params,
        sizeof(struct wl128x_ini_fem_params_2));


 memcpy(&radio_parms->static_params_5,
        &nvs->stat_radio_params_5,
        sizeof(struct wl128x_ini_band_params_5));
 memcpy(&radio_parms->dyn_params_5,
        &nvs->dyn_radio_params_5[fem_idx].params,
        sizeof(struct wl128x_ini_fem_params_5));

 radio_parms->fem_vendor_and_options = nvs->fem_vendor_and_options;

 wl1271_dump(DEBUG_CMD, "TEST_CMD_INI_FILE_RADIO_PARAM: ",
      radio_parms, sizeof(*radio_parms));

 ret = wl1271_cmd_test(wl, radio_parms, sizeof(*radio_parms), 0);
 if (ret < 0)
  wl1271_warning("CMD_INI_FILE_RADIO_PARAM failed");

 kfree(radio_parms);
 return ret;
}

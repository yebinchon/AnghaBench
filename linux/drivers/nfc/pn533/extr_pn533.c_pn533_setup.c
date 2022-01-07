
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int timing ;
struct pn533_config_timing {int dep_timeout; void* atr_res_timeout; void* rfu; } ;
struct pn533_config_max_retries {int mx_rty_atr; int mx_rty_psl; int mx_rty_passive_act; } ;
struct pn533 {int device_type; int dev; } ;
typedef int max_retries ;


 int EINVAL ;
 int PN533_CFGITEM_MAX_RETRIES ;
 int PN533_CFGITEM_PASORI ;
 int PN533_CFGITEM_TIMING ;
 int PN533_CONFIG_MAX_RETRIES_NO_RETRY ;
 void* PN533_CONFIG_TIMING_102 ;
 int PN533_CONFIG_TIMING_204 ;




 int nfc_err (int ,char*,...) ;
 int pn533_pasori_fw_reset (struct pn533*) ;
 int pn533_set_configuration (struct pn533*,int ,int*,int) ;

__attribute__((used)) static int pn533_setup(struct pn533 *dev)
{
 struct pn533_config_max_retries max_retries;
 struct pn533_config_timing timing;
 u8 pasori_cfg[3] = {0x08, 0x01, 0x08};
 int rc;

 switch (dev->device_type) {
 case 128:
 case 130:
 case 131:
 case 129:
  max_retries.mx_rty_atr = 0x2;
  max_retries.mx_rty_psl = 0x1;
  max_retries.mx_rty_passive_act =
   PN533_CONFIG_MAX_RETRIES_NO_RETRY;

  timing.rfu = PN533_CONFIG_TIMING_102;
  timing.atr_res_timeout = PN533_CONFIG_TIMING_102;
  timing.dep_timeout = PN533_CONFIG_TIMING_204;

  break;

 default:
  nfc_err(dev->dev, "Unknown device type %d\n",
   dev->device_type);
  return -EINVAL;
 }

 rc = pn533_set_configuration(dev, PN533_CFGITEM_MAX_RETRIES,
         (u8 *)&max_retries, sizeof(max_retries));
 if (rc) {
  nfc_err(dev->dev,
   "Error on setting MAX_RETRIES config\n");
  return rc;
 }


 rc = pn533_set_configuration(dev, PN533_CFGITEM_TIMING,
         (u8 *)&timing, sizeof(timing));
 if (rc) {
  nfc_err(dev->dev, "Error on setting RF timings\n");
  return rc;
 }

 switch (dev->device_type) {
 case 128:
 case 129:
  break;

 case 130:
  pn533_pasori_fw_reset(dev);

  rc = pn533_set_configuration(dev, PN533_CFGITEM_PASORI,
          pasori_cfg, 3);
  if (rc) {
   nfc_err(dev->dev,
    "Error while settings PASORI config\n");
   return rc;
  }

  pn533_pasori_fw_reset(dev);

  break;
 }

 return 0;
}

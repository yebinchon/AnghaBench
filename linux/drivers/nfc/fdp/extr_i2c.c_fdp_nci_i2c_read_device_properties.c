
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct device {int dummy; } ;


 int FDP_DP_CLOCK_FREQ_NAME ;
 int FDP_DP_CLOCK_TYPE_NAME ;
 int FDP_DP_FW_VSC_CFG_NAME ;
 int GFP_KERNEL ;
 int dev_dbg (struct device*,char*,...) ;
 scalar_t__ device_property_present (struct device*,int ) ;
 int device_property_read_u32 (struct device*,int ,int*) ;
 int device_property_read_u8 (struct device*,int ,scalar_t__*) ;
 int device_property_read_u8_array (struct device*,int ,scalar_t__*,scalar_t__) ;
 int devm_kfree (struct device*,scalar_t__*) ;
 scalar_t__* devm_kmalloc_array (struct device*,scalar_t__,int,int ) ;

__attribute__((used)) static void fdp_nci_i2c_read_device_properties(struct device *dev,
            u8 *clock_type, u32 *clock_freq,
            u8 **fw_vsc_cfg)
{
 int r;
 u8 len;

 r = device_property_read_u8(dev, FDP_DP_CLOCK_TYPE_NAME, clock_type);
 if (r) {
  dev_dbg(dev, "Using default clock type");
  *clock_type = 0;
 }

 r = device_property_read_u32(dev, FDP_DP_CLOCK_FREQ_NAME, clock_freq);
 if (r) {
  dev_dbg(dev, "Using default clock frequency\n");
  *clock_freq = 26000;
 }

 if (device_property_present(dev, FDP_DP_FW_VSC_CFG_NAME)) {
  r = device_property_read_u8(dev, FDP_DP_FW_VSC_CFG_NAME,
         &len);

  if (r || len <= 0)
   goto vsc_read_err;


  len++;

  *fw_vsc_cfg = devm_kmalloc_array(dev,
        len, sizeof(**fw_vsc_cfg),
        GFP_KERNEL);

  r = device_property_read_u8_array(dev, FDP_DP_FW_VSC_CFG_NAME,
        *fw_vsc_cfg, len);

  if (r) {
   devm_kfree(dev, *fw_vsc_cfg);
   goto vsc_read_err;
  }
 } else {
vsc_read_err:
  dev_dbg(dev, "FW vendor specific commands not present\n");
  *fw_vsc_cfg = ((void*)0);
 }

 dev_dbg(dev, "Clock type: %d, clock frequency: %d, VSC: %s",
  *clock_type, *clock_freq, *fw_vsc_cfg != ((void*)0) ? "yes" : "no");
}

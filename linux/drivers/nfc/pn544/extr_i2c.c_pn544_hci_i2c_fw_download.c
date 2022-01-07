
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pn544_i2c_phy {int fw_work; int fw_work_state; int hw_variant; int firmware_name; } ;


 int FW_WORK_STATE_START ;
 int pr_info (char*,char const*) ;
 int schedule_work (int *) ;
 int strcpy (int ,char const*) ;

__attribute__((used)) static int pn544_hci_i2c_fw_download(void *phy_id, const char *firmware_name,
     u8 hw_variant)
{
 struct pn544_i2c_phy *phy = phy_id;

 pr_info("Starting Firmware Download (%s)\n", firmware_name);

 strcpy(phy->firmware_name, firmware_name);

 phy->hw_variant = hw_variant;
 phy->fw_work_state = FW_WORK_STATE_START;

 schedule_work(&phy->fw_work);

 return 0;
}

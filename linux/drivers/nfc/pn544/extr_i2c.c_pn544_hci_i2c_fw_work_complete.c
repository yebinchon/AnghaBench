
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pn544_i2c_phy {int firmware_name; TYPE_1__* hdev; int * fw; int fw_work_state; } ;
struct TYPE_2__ {int ndev; } ;


 int FW_WORK_STATE_IDLE ;
 int nfc_fw_download_done (int ,int ,int ) ;
 int pn544_hci_i2c_disable (struct pn544_i2c_phy*) ;
 int pr_info (char*,int) ;
 int release_firmware (int *) ;

__attribute__((used)) static void pn544_hci_i2c_fw_work_complete(struct pn544_i2c_phy *phy,
        int result)
{
 pr_info("Firmware Download Complete, result=%d\n", result);

 pn544_hci_i2c_disable(phy);

 phy->fw_work_state = FW_WORK_STATE_IDLE;

 if (phy->fw) {
  release_firmware(phy->fw);
  phy->fw = ((void*)0);
 }

 nfc_fw_download_done(phy->hdev->ndev, phy->firmware_name, (u32) -result);
}

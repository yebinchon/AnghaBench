
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pn544_i2c_phy {int fw_work_state; scalar_t__ fw_written; scalar_t__ fw_blob_size; scalar_t__ fw_blob_data; scalar_t__ fw_blob_dest_addr; int i2c_dev; } ;


 int FW_WORK_STATE_WAIT_WRITE_ANSWER ;
 int pn544_hci_i2c_fw_write_cmd (int ,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int pn544_hci_i2c_fw_write_chunk(struct pn544_i2c_phy *phy)
{
 int r;

 r = pn544_hci_i2c_fw_write_cmd(phy->i2c_dev,
           phy->fw_blob_dest_addr + phy->fw_written,
           phy->fw_blob_data + phy->fw_written,
           phy->fw_blob_size - phy->fw_written);
 if (r < 0)
  return r;

 phy->fw_written += r;
 phy->fw_work_state = FW_WORK_STATE_WAIT_WRITE_ANSWER;

 return 0;
}

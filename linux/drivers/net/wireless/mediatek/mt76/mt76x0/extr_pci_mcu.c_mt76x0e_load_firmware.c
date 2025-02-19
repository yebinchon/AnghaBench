
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mt76x02_fw_header {int ilm_len; int dlm_len; int build_time; int build_ver; int fw_ver; } ;
struct TYPE_2__ {int dev; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;
struct firmware {int size; int * data; } ;


 int EIO ;
 int ETIMEDOUT ;
 char* MT7610E_FIRMWARE ;
 char* MT7650E_FIRMWARE ;
 int MT_MCU_COM_REG0 ;
 int MT_MCU_DLM_OFFSET ;
 int MT_MCU_ILM_ADDR ;
 int MT_MCU_INT_LEVEL ;
 int MT_MCU_IVB_ADDR ;
 int MT_MCU_IVB_SIZE ;
 int MT_MCU_PCIE_REMAP_BASE4 ;
 int MT_MCU_RESET_CTL ;
 int MT_MCU_SEMAPHORE_00 ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,int,int,int) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int mt76_chip (TYPE_1__*) ;
 int mt76_poll (struct mt76x02_dev*,int ,int,int,int) ;
 int mt76_poll_msec (struct mt76x02_dev*,int ,int,int,int) ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;
 int mt76_wr_copy (struct mt76x02_dev*,int,int const*,int) ;
 int mt76x02_set_ethtool_fwver (struct mt76x02_dev*,struct mt76x02_fw_header const*) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,int ) ;

__attribute__((used)) static int mt76x0e_load_firmware(struct mt76x02_dev *dev)
{
 bool is_combo_chip = mt76_chip(&dev->mt76) != 0x7610;
 u32 val, ilm_len, dlm_len, offset = 0;
 const struct mt76x02_fw_header *hdr;
 const struct firmware *fw;
 const char *firmware;
 const u8 *fw_payload;
 int len, err;

 if (is_combo_chip)
  firmware = MT7650E_FIRMWARE;
 else
  firmware = MT7610E_FIRMWARE;

 err = request_firmware(&fw, firmware, dev->mt76.dev);
 if (err)
  return err;

 if (!fw || !fw->data || fw->size < sizeof(*hdr)) {
  err = -EIO;
  goto out;
 }

 hdr = (const struct mt76x02_fw_header *)fw->data;

 len = sizeof(*hdr);
 len += le32_to_cpu(hdr->ilm_len);
 len += le32_to_cpu(hdr->dlm_len);

 if (fw->size != len) {
  err = -EIO;
  goto out;
 }

 fw_payload = fw->data + sizeof(*hdr);

 val = le16_to_cpu(hdr->fw_ver);
 dev_info(dev->mt76.dev, "Firmware Version: %d.%d.%02d\n",
   (val >> 12) & 0xf, (val >> 8) & 0xf, val & 0xf);

 val = le16_to_cpu(hdr->fw_ver);
 dev_dbg(dev->mt76.dev,
  "Firmware Version: %d.%d.%02d Build: %x Build time: %.16s\n",
  (val >> 12) & 0xf, (val >> 8) & 0xf, val & 0xf,
  le16_to_cpu(hdr->build_ver), hdr->build_time);

 if (is_combo_chip && !mt76_poll(dev, MT_MCU_SEMAPHORE_00, 1, 1, 600)) {
  dev_err(dev->mt76.dev,
   "Could not get hardware semaphore for loading fw\n");
  err = -ETIMEDOUT;
  goto out;
 }


 mt76_wr(dev, MT_MCU_PCIE_REMAP_BASE4, 0);
 ilm_len = le32_to_cpu(hdr->ilm_len);
 if (is_combo_chip) {
  ilm_len -= MT_MCU_IVB_SIZE;
  offset = MT_MCU_IVB_SIZE;
 }
 dev_dbg(dev->mt76.dev, "loading FW - ILM %u\n", ilm_len);
 mt76_wr_copy(dev, MT_MCU_ILM_ADDR + offset, fw_payload + offset,
       ilm_len);


 if (is_combo_chip) {
  dev_dbg(dev->mt76.dev, "loading FW - IVB %u\n",
   MT_MCU_IVB_SIZE);
  mt76_wr_copy(dev, MT_MCU_IVB_ADDR, fw_payload, MT_MCU_IVB_SIZE);
 }


 mt76_wr(dev, MT_MCU_PCIE_REMAP_BASE4, MT_MCU_DLM_OFFSET);
 dlm_len = le32_to_cpu(hdr->dlm_len);
 dev_dbg(dev->mt76.dev, "loading FW - DLM %u\n", dlm_len);
 mt76_wr_copy(dev, MT_MCU_ILM_ADDR,
       fw_payload + le32_to_cpu(hdr->ilm_len), dlm_len);


 mt76_wr(dev, MT_MCU_PCIE_REMAP_BASE4, 0);
 if (is_combo_chip)
  mt76_wr(dev, MT_MCU_INT_LEVEL, 0x3);
 else
  mt76_wr(dev, MT_MCU_RESET_CTL, 0x300);

 if (!mt76_poll_msec(dev, MT_MCU_COM_REG0, 1, 1, 1000)) {
  dev_err(dev->mt76.dev, "Firmware failed to start\n");
  err = -ETIMEDOUT;
  goto out;
 }

 mt76x02_set_ethtool_fwver(dev, hdr);
 dev_dbg(dev->mt76.dev, "Firmware running!\n");

out:
 if (is_combo_chip)
  mt76_wr(dev, MT_MCU_SEMAPHORE_00, 0x1);
 release_firmware(fw);

 return err;
}

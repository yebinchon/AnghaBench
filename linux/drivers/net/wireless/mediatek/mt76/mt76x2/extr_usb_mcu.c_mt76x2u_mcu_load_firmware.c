
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mt76x02_fw_header {int build_time; int build_ver; int fw_ver; int dlm_len; int ilm_len; } ;
struct TYPE_2__ {int dev; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;
struct firmware {int size; scalar_t__ data; } ;


 int BIT (int) ;
 int CFG ;
 int EINVAL ;
 int EIO ;
 int ETIMEDOUT ;
 int FIELD_PREP (int ,int) ;
 int MCU_FW_URB_MAX_PAYLOAD ;
 int MT7662_FIRMWARE ;
 int MT76U_MCU_DLM_OFFSET ;
 int MT76U_MCU_ILM_OFFSET ;
 scalar_t__ MT76XX_REV_E3 ;
 int MT_FCE_PDMA_GLOBAL_CONF ;
 int MT_FCE_PSE_CTRL ;
 int MT_FCE_SKIP_FS ;
 int MT_MCU_COM_REG0 ;
 int MT_TX_CPU_FROM_FCE_BASE_PTR ;
 int MT_TX_CPU_FROM_FCE_MAX_COUNT ;
 int MT_USB_DMA_CFG_RX_BULK_AGG_TOUT ;
 int MT_USB_DMA_CFG_RX_BULK_EN ;
 int MT_USB_DMA_CFG_TX_BULK_EN ;
 int MT_USB_U3DMA_CFG ;
 int MT_VEND_ADDR (int ,int ) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,int,...) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int mt76_poll_msec (struct mt76x02_dev*,int ,int,int,int) ;
 int mt76_set (struct mt76x02_dev*,int ,int ) ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;
 int mt76x02_set_ethtool_fwver (struct mt76x02_dev*,struct mt76x02_fw_header const*) ;
 int mt76x02u_mcu_fw_reset (struct mt76x02_dev*) ;
 int mt76x02u_mcu_fw_send_data (struct mt76x02_dev*,scalar_t__,int,int ,int) ;
 int mt76x2u_mcu_load_ivb (struct mt76x02_dev*) ;
 scalar_t__ mt76xx_rev (struct mt76x02_dev*) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int mt76x2u_mcu_load_firmware(struct mt76x02_dev *dev)
{
 u32 val, dlm_offset = MT76U_MCU_DLM_OFFSET;
 const struct mt76x02_fw_header *hdr;
 int err, len, ilm_len, dlm_len;
 const struct firmware *fw;

 err = request_firmware(&fw, MT7662_FIRMWARE, dev->mt76.dev);
 if (err < 0)
  return err;

 if (!fw || !fw->data || fw->size < sizeof(*hdr)) {
  err = -EINVAL;
  goto out;
 }

 hdr = (const struct mt76x02_fw_header *)fw->data;
 ilm_len = le32_to_cpu(hdr->ilm_len);
 dlm_len = le32_to_cpu(hdr->dlm_len);
 len = sizeof(*hdr) + ilm_len + dlm_len;
 if (fw->size != len) {
  err = -EINVAL;
  goto out;
 }

 val = le16_to_cpu(hdr->fw_ver);
 dev_info(dev->mt76.dev, "Firmware Version: %d.%d.%02d\n",
   (val >> 12) & 0xf, (val >> 8) & 0xf, val & 0xf);

 val = le16_to_cpu(hdr->build_ver);
 dev_info(dev->mt76.dev, "Build: %x\n", val);
 dev_info(dev->mt76.dev, "Build Time: %.16s\n", hdr->build_time);


 mt76x02u_mcu_fw_reset(dev);
 usleep_range(5000, 10000);


 val = MT_USB_DMA_CFG_RX_BULK_EN |
       MT_USB_DMA_CFG_TX_BULK_EN |
       FIELD_PREP(MT_USB_DMA_CFG_RX_BULK_AGG_TOUT, 0x20);
 mt76_wr(dev, MT_VEND_ADDR(CFG, MT_USB_U3DMA_CFG), val);

 mt76_wr(dev, MT_FCE_PSE_CTRL, 0x1);

 mt76_wr(dev, MT_TX_CPU_FROM_FCE_BASE_PTR, 0x400230);

 mt76_wr(dev, MT_TX_CPU_FROM_FCE_MAX_COUNT, 0x1);

 mt76_wr(dev, MT_FCE_PDMA_GLOBAL_CONF, 0x44);

 mt76_wr(dev, MT_FCE_SKIP_FS, 0x3);


 err = mt76x02u_mcu_fw_send_data(dev, fw->data + sizeof(*hdr),
     ilm_len, MCU_FW_URB_MAX_PAYLOAD,
     MT76U_MCU_ILM_OFFSET);
 if (err < 0) {
  err = -EIO;
  goto out;
 }


 if (mt76xx_rev(dev) >= MT76XX_REV_E3)
  dlm_offset += 0x800;
 err = mt76x02u_mcu_fw_send_data(dev, fw->data + sizeof(*hdr) + ilm_len,
     dlm_len, MCU_FW_URB_MAX_PAYLOAD,
     dlm_offset);
 if (err < 0) {
  err = -EIO;
  goto out;
 }

 mt76x2u_mcu_load_ivb(dev);
 if (!mt76_poll_msec(dev, MT_MCU_COM_REG0, 1, 1, 100)) {
  dev_err(dev->mt76.dev, "firmware failed to start\n");
  err = -ETIMEDOUT;
  goto out;
 }

 mt76_set(dev, MT_MCU_COM_REG0, BIT(1));

 mt76_wr(dev, MT_FCE_PSE_CTRL, 0x1);
 mt76x02_set_ethtool_fwver(dev, hdr);
 dev_dbg(dev->mt76.dev, "firmware running\n");

out:
 release_firmware(fw);
 return err;
}

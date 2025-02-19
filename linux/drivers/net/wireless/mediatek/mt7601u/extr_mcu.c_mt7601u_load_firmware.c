
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt76_fw_header {int ilm_len; int build_time; int build_ver; int fw_ver; int dlm_len; } ;
struct mt76_fw {int dummy; } ;
struct mt7601u_dev {int dev; } ;
struct firmware {int size; scalar_t__ data; } ;


 int ENOENT ;
 int MT7601U_FIRMWARE ;
 int MT_FCE_PDMA_GLOBAL_CONF ;
 int MT_FCE_PSE_CTRL ;
 int MT_FCE_SKIP_FS ;
 int MT_MCU_IVB_SIZE ;
 int MT_PBF_CFG ;
 int MT_PBF_CFG_TX0Q_EN ;
 int MT_PBF_CFG_TX1Q_EN ;
 int MT_PBF_CFG_TX2Q_EN ;
 int MT_PBF_CFG_TX3Q_EN ;
 int MT_TX_CPU_FROM_FCE_BASE_PTR ;
 int MT_TX_CPU_FROM_FCE_MAX_COUNT ;
 int MT_USB_DMA_CFG ;
 int MT_USB_DMA_CFG_RX_BULK_EN ;
 int MT_USB_DMA_CFG_TX_BULK_EN ;
 int MT_USB_DMA_CFG_TX_CLR ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,int,int,int,int,int ) ;
 int firmware_request_cache (int ,int ) ;
 scalar_t__ firmware_running (struct mt7601u_dev*) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int msleep (int) ;
 int mt7601u_rmw (struct mt7601u_dev*,int ,int ,int) ;
 int mt7601u_upload_firmware (struct mt7601u_dev*,struct mt76_fw const*) ;
 int mt7601u_vendor_reset (struct mt7601u_dev*) ;
 int mt7601u_wr (struct mt7601u_dev*,int,int) ;
 int mt76_set (struct mt7601u_dev*,int,int) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int ,int ) ;

__attribute__((used)) static int mt7601u_load_firmware(struct mt7601u_dev *dev)
{
 const struct firmware *fw;
 const struct mt76_fw_header *hdr;
 int len, ret;
 u32 val;

 mt7601u_wr(dev, MT_USB_DMA_CFG, (MT_USB_DMA_CFG_RX_BULK_EN |
      MT_USB_DMA_CFG_TX_BULK_EN));

 if (firmware_running(dev))
  return firmware_request_cache(dev->dev, MT7601U_FIRMWARE);

 ret = request_firmware(&fw, MT7601U_FIRMWARE, dev->dev);
 if (ret)
  return ret;

 if (!fw || !fw->data || fw->size < sizeof(*hdr))
  goto err_inv_fw;

 hdr = (const struct mt76_fw_header *) fw->data;

 if (le32_to_cpu(hdr->ilm_len) <= MT_MCU_IVB_SIZE)
  goto err_inv_fw;

 len = sizeof(*hdr);
 len += le32_to_cpu(hdr->ilm_len);
 len += le32_to_cpu(hdr->dlm_len);

 if (fw->size != len)
  goto err_inv_fw;

 val = le16_to_cpu(hdr->fw_ver);
 dev_info(dev->dev,
   "Firmware Version: %d.%d.%02d Build: %x Build time: %.16s\n",
   (val >> 12) & 0xf, (val >> 8) & 0xf, val & 0xf,
   le16_to_cpu(hdr->build_ver), hdr->build_time);

 len = le32_to_cpu(hdr->ilm_len);

 mt7601u_wr(dev, 0x94c, 0);
 mt7601u_wr(dev, MT_FCE_PSE_CTRL, 0);

 mt7601u_vendor_reset(dev);
 msleep(5);

 mt7601u_wr(dev, 0xa44, 0);
 mt7601u_wr(dev, 0x230, 0x84210);
 mt7601u_wr(dev, 0x400, 0x80c00);
 mt7601u_wr(dev, 0x800, 1);

 mt7601u_rmw(dev, MT_PBF_CFG, 0, (MT_PBF_CFG_TX0Q_EN |
      MT_PBF_CFG_TX1Q_EN |
      MT_PBF_CFG_TX2Q_EN |
      MT_PBF_CFG_TX3Q_EN));

 mt7601u_wr(dev, MT_FCE_PSE_CTRL, 1);

 mt7601u_wr(dev, MT_USB_DMA_CFG, (MT_USB_DMA_CFG_RX_BULK_EN |
      MT_USB_DMA_CFG_TX_BULK_EN));
 val = mt76_set(dev, MT_USB_DMA_CFG, MT_USB_DMA_CFG_TX_CLR);
 val &= ~MT_USB_DMA_CFG_TX_CLR;
 mt7601u_wr(dev, MT_USB_DMA_CFG, val);


 mt7601u_wr(dev, MT_TX_CPU_FROM_FCE_BASE_PTR, 0x400230);

 mt7601u_wr(dev, MT_TX_CPU_FROM_FCE_MAX_COUNT, 1);

 mt7601u_wr(dev, MT_FCE_PDMA_GLOBAL_CONF, 0x44);

 mt7601u_wr(dev, MT_FCE_SKIP_FS, 3);

 ret = mt7601u_upload_firmware(dev, (const struct mt76_fw *)fw->data);

 release_firmware(fw);

 return ret;

err_inv_fw:
 dev_err(dev->dev, "Invalid firmware image\n");
 release_firmware(fw);
 return -ENOENT;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mt76x02_fw_header {int ilm_len; int build_time; int build_ver; int fw_ver; int dlm_len; } ;
struct TYPE_2__ {int dev; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;
struct firmware {int size; scalar_t__ data; } ;


 int ENOENT ;
 int FIELD_PREP (int ,int) ;
 int MT_FCE_PDMA_GLOBAL_CONF ;
 int MT_FCE_PSE_CTRL ;
 int MT_FCE_SKIP_FS ;
 int MT_MCU_IVB_SIZE ;
 int MT_TX_CPU_FROM_FCE_BASE_PTR ;
 int MT_TX_CPU_FROM_FCE_MAX_COUNT ;
 int MT_USB_DMA_CFG ;
 int MT_USB_DMA_CFG_RX_BULK_AGG_TOUT ;
 int MT_USB_DMA_CFG_RX_BULK_EN ;
 int MT_USB_DMA_CFG_TX_BULK_EN ;
 int MT_USB_DMA_CFG_UDMA_TX_WL_DROP ;
 int dev_dbg (int ,char*,int,int,int,int,int ) ;
 int dev_err (int ,char*) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int mt76_rr (struct mt76x02_dev*,int) ;
 int mt76_set (struct mt76x02_dev*,int,int) ;
 int mt76_wr (struct mt76x02_dev*,int,int) ;
 int mt76x02u_mcu_fw_reset (struct mt76x02_dev*) ;
 scalar_t__ mt76x0_firmware_running (struct mt76x02_dev*) ;
 int mt76x0_get_firmware (struct mt76x02_dev*,struct firmware const**) ;
 int mt76x0u_upload_firmware (struct mt76x02_dev*,struct mt76x02_fw_header const*) ;
 int release_firmware (struct firmware const*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int mt76x0u_load_firmware(struct mt76x02_dev *dev)
{
 const struct firmware *fw;
 const struct mt76x02_fw_header *hdr;
 int len, ret;
 u32 val;

 mt76_wr(dev, MT_USB_DMA_CFG, (MT_USB_DMA_CFG_RX_BULK_EN |
          MT_USB_DMA_CFG_TX_BULK_EN));

 if (mt76x0_firmware_running(dev))
  return 0;

 ret = mt76x0_get_firmware(dev, &fw);
 if (ret)
  return ret;

 if (!fw || !fw->data || fw->size < sizeof(*hdr))
  goto err_inv_fw;

 hdr = (const struct mt76x02_fw_header *)fw->data;

 if (le32_to_cpu(hdr->ilm_len) <= MT_MCU_IVB_SIZE)
  goto err_inv_fw;

 len = sizeof(*hdr);
 len += le32_to_cpu(hdr->ilm_len);
 len += le32_to_cpu(hdr->dlm_len);

 if (fw->size != len)
  goto err_inv_fw;

 val = le16_to_cpu(hdr->fw_ver);
 dev_dbg(dev->mt76.dev,
  "Firmware Version: %d.%d.%02d Build: %x Build time: %.16s\n",
  (val >> 12) & 0xf, (val >> 8) & 0xf, val & 0xf,
  le16_to_cpu(hdr->build_ver), hdr->build_time);

 len = le32_to_cpu(hdr->ilm_len);

 mt76_wr(dev, 0x1004, 0x2c);

 mt76_set(dev, MT_USB_DMA_CFG,
   (MT_USB_DMA_CFG_RX_BULK_EN | MT_USB_DMA_CFG_TX_BULK_EN) |
   FIELD_PREP(MT_USB_DMA_CFG_RX_BULK_AGG_TOUT, 0x20));
 mt76x02u_mcu_fw_reset(dev);
 usleep_range(5000, 6000);

 mt76_wr(dev, MT_FCE_PSE_CTRL, 1);


 mt76_wr(dev, MT_TX_CPU_FROM_FCE_BASE_PTR, 0x400230);

 mt76_wr(dev, MT_TX_CPU_FROM_FCE_MAX_COUNT, 1);

 mt76_wr(dev, MT_FCE_PDMA_GLOBAL_CONF, 0x44);

 mt76_wr(dev, MT_FCE_SKIP_FS, 3);

 val = mt76_rr(dev, MT_USB_DMA_CFG);
 val |= MT_USB_DMA_CFG_UDMA_TX_WL_DROP;
 mt76_wr(dev, MT_USB_DMA_CFG, val);
 val &= ~MT_USB_DMA_CFG_UDMA_TX_WL_DROP;
 mt76_wr(dev, MT_USB_DMA_CFG, val);

 ret = mt76x0u_upload_firmware(dev, hdr);
 release_firmware(fw);

 mt76_wr(dev, MT_FCE_PSE_CTRL, 1);

 return ret;

err_inv_fw:
 dev_err(dev->mt76.dev, "Invalid firmware image\n");
 release_firmware(fw);
 return -ENOENT;
}

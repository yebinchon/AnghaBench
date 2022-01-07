
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int dlm_len; int ilm_len; } ;
struct mt76_fw {scalar_t__ ilm; TYPE_1__ hdr; int ivb; } ;
struct mt7601u_dma_buf {int dummy; } ;
struct mt7601u_dev {int dev; } ;


 int ENOMEM ;
 int ETIMEDOUT ;
 int GFP_KERNEL ;
 int MCU_FW_URB_SIZE ;
 int MT_MCU_DLM_OFFSET ;
 int MT_VEND_DEV_MODE ;
 int USB_DIR_OUT ;
 int dev_dbg (int ,char*,...) ;
 int firmware_running (struct mt7601u_dev*) ;
 int kfree (void*) ;
 void* kmemdup (int ,int,int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int msleep (int) ;
 int mt7601u_dma_fw (struct mt7601u_dev*,struct mt7601u_dma_buf*,scalar_t__,scalar_t__,int) ;
 scalar_t__ mt7601u_usb_alloc_buf (struct mt7601u_dev*,int ,struct mt7601u_dma_buf*) ;
 int mt7601u_usb_free_buf (struct mt7601u_dev*,struct mt7601u_dma_buf*) ;
 int mt7601u_vendor_request (struct mt7601u_dev*,int ,int ,int,int ,void*,int) ;

__attribute__((used)) static int
mt7601u_upload_firmware(struct mt7601u_dev *dev, const struct mt76_fw *fw)
{
 struct mt7601u_dma_buf dma_buf;
 void *ivb;
 u32 ilm_len, dlm_len;
 int i, ret;

 ivb = kmemdup(fw->ivb, sizeof(fw->ivb), GFP_KERNEL);
 if (!ivb)
  return -ENOMEM;
 if (mt7601u_usb_alloc_buf(dev, MCU_FW_URB_SIZE, &dma_buf)) {
  ret = -ENOMEM;
  goto error;
 }

 ilm_len = le32_to_cpu(fw->hdr.ilm_len) - sizeof(fw->ivb);
 dev_dbg(dev->dev, "loading FW - ILM %u + IVB %zu\n",
  ilm_len, sizeof(fw->ivb));
 ret = mt7601u_dma_fw(dev, &dma_buf, fw->ilm, ilm_len, sizeof(fw->ivb));
 if (ret)
  goto error;

 dlm_len = le32_to_cpu(fw->hdr.dlm_len);
 dev_dbg(dev->dev, "loading FW - DLM %u\n", dlm_len);
 ret = mt7601u_dma_fw(dev, &dma_buf, fw->ilm + ilm_len,
        dlm_len, MT_MCU_DLM_OFFSET);
 if (ret)
  goto error;

 ret = mt7601u_vendor_request(dev, MT_VEND_DEV_MODE, USB_DIR_OUT,
         0x12, 0, ivb, sizeof(fw->ivb));
 if (ret < 0)
  goto error;
 ret = 0;

 for (i = 100; i && !firmware_running(dev); i--)
  msleep(10);
 if (!i) {
  ret = -ETIMEDOUT;
  goto error;
 }

 dev_dbg(dev->dev, "Firmware running!\n");
error:
 kfree(ivb);
 mt7601u_usb_free_buf(dev, &dma_buf);

 return ret;
}

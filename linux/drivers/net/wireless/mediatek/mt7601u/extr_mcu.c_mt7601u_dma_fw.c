
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mt7601u_dma_buf {int dummy; } ;
struct mt7601u_dev {int dummy; } ;


 int BIT (int) ;
 int ETIMEDOUT ;
 int MCU_FW_URB_MAX_PAYLOAD ;
 int MT_MCU_COM_REG1 ;
 int __mt7601u_dma_fw (struct mt7601u_dev*,struct mt7601u_dma_buf*,void const*,int,scalar_t__) ;
 int min (int ,int) ;
 int mt76_poll_msec (struct mt7601u_dev*,int ,int ,int ,int) ;

__attribute__((used)) static int
mt7601u_dma_fw(struct mt7601u_dev *dev, struct mt7601u_dma_buf *dma_buf,
        const void *data, int len, u32 dst_addr)
{
 int n, ret;

 if (len == 0)
  return 0;

 n = min(MCU_FW_URB_MAX_PAYLOAD, len);
 ret = __mt7601u_dma_fw(dev, dma_buf, data, n, dst_addr);
 if (ret)
  return ret;

 if (!mt76_poll_msec(dev, MT_MCU_COM_REG1, BIT(31), BIT(31), 500))
  return -ETIMEDOUT;

 return mt7601u_dma_fw(dev, dma_buf, data + n, len - n, dst_addr + n);
}

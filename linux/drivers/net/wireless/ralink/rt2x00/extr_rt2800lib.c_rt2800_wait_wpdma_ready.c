
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;


 int EACCES ;
 unsigned int REGISTER_BUSY_COUNT ;
 int WPDMA_GLO_CFG ;
 int WPDMA_GLO_CFG_RX_DMA_BUSY ;
 int WPDMA_GLO_CFG_TX_DMA_BUSY ;
 int msleep (int) ;
 int rt2800_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00_err (struct rt2x00_dev*,char*,int ) ;
 int rt2x00_get_field32 (int ,int ) ;

int rt2800_wait_wpdma_ready(struct rt2x00_dev *rt2x00dev)
{
 unsigned int i;
 u32 reg;





 for (i = 0; i < REGISTER_BUSY_COUNT; i++) {
  reg = rt2800_register_read(rt2x00dev, WPDMA_GLO_CFG);
  if (!rt2x00_get_field32(reg, WPDMA_GLO_CFG_TX_DMA_BUSY) &&
      !rt2x00_get_field32(reg, WPDMA_GLO_CFG_RX_DMA_BUSY))
   return 0;

  msleep(10);
 }

 rt2x00_err(rt2x00dev, "WPDMA TX/RX busy [0x%08x]\n", reg);
 return -EACCES;
}

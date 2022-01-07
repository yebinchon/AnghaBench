
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
typedef enum flag { ____Placeholder_flag } flag ;


 int MASK_IRQFLAGS1_AUTOMODE ;
 int MASK_IRQFLAGS1_MODE_READY ;
 int MASK_IRQFLAGS1_PLL_LOCK ;
 int MASK_IRQFLAGS1_RSSI ;
 int MASK_IRQFLAGS1_RX_READY ;
 int MASK_IRQFLAGS1_SYNC_ADDRESS_MATCH ;
 int MASK_IRQFLAGS1_TIMEOUT ;
 int MASK_IRQFLAGS1_TX_READY ;
 int MASK_IRQFLAGS2_CRC_OK ;
 int MASK_IRQFLAGS2_FIFO_FULL ;
 int MASK_IRQFLAGS2_FIFO_LEVEL ;
 int MASK_IRQFLAGS2_FIFO_NOT_EMPTY ;
 int MASK_IRQFLAGS2_FIFO_OVERRUN ;
 int MASK_IRQFLAGS2_LOW_BAT ;
 int MASK_IRQFLAGS2_PACKET_SENT ;
 int MASK_IRQFLAGS2_PAYLOAD_READY ;
 int REG_IRQFLAGS1 ;
 int REG_IRQFLAGS2 ;
 int rf69_read_reg (struct spi_device*,int ) ;




bool rf69_get_flag(struct spi_device *spi, enum flag flag)
{
 switch (flag) {
 case 136:
  return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_MODE_READY);
 case 132:
  return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_RX_READY);
 case 131:
  return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_TX_READY);
 case 133:
  return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_PLL_LOCK);
 case 130:
  return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_RSSI);
 case 128:
  return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_TIMEOUT);
 case 143:
  return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_AUTOMODE);
 case 129:
  return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_SYNC_ADDRESS_MATCH);
 case 139:
  return (rf69_read_reg(spi, REG_IRQFLAGS2) & MASK_IRQFLAGS2_FIFO_FULL);




 case 140:
  return !(rf69_read_reg(spi, REG_IRQFLAGS2) & MASK_IRQFLAGS2_FIFO_NOT_EMPTY);
 case 138:
  return (rf69_read_reg(spi, REG_IRQFLAGS2) & MASK_IRQFLAGS2_FIFO_LEVEL);
 case 137:
  return (rf69_read_reg(spi, REG_IRQFLAGS2) & MASK_IRQFLAGS2_FIFO_OVERRUN);
 case 135:
  return (rf69_read_reg(spi, REG_IRQFLAGS2) & MASK_IRQFLAGS2_PACKET_SENT);
 case 134:
  return (rf69_read_reg(spi, REG_IRQFLAGS2) & MASK_IRQFLAGS2_PAYLOAD_READY);
 case 141:
  return (rf69_read_reg(spi, REG_IRQFLAGS2) & MASK_IRQFLAGS2_CRC_OK);
 case 142:
  return (rf69_read_reg(spi, REG_IRQFLAGS2) & MASK_IRQFLAGS2_LOW_BAT);
 default: return 0;
 }
}

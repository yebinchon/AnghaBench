
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;
struct data_queue {int qid; struct rt2x00_dev* rt2x00dev; } ;




 int TXRX_CSR0 ;
 int TXRX_CSR0_DISABLE_RX ;
 int TXRX_CSR9 ;
 int TXRX_CSR9_BEACON_GEN ;
 int TXRX_CSR9_TBTT_ENABLE ;
 int TXRX_CSR9_TSF_TICKING ;
 int rt2x00_set_field32 (int *,int ,int) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;

__attribute__((used)) static void rt61pci_start_queue(struct data_queue *queue)
{
 struct rt2x00_dev *rt2x00dev = queue->rt2x00dev;
 u32 reg;

 switch (queue->qid) {
 case 128:
  reg = rt2x00mmio_register_read(rt2x00dev, TXRX_CSR0);
  rt2x00_set_field32(&reg, TXRX_CSR0_DISABLE_RX, 0);
  rt2x00mmio_register_write(rt2x00dev, TXRX_CSR0, reg);
  break;
 case 129:
  reg = rt2x00mmio_register_read(rt2x00dev, TXRX_CSR9);
  rt2x00_set_field32(&reg, TXRX_CSR9_TSF_TICKING, 1);
  rt2x00_set_field32(&reg, TXRX_CSR9_TBTT_ENABLE, 1);
  rt2x00_set_field32(&reg, TXRX_CSR9_BEACON_GEN, 1);
  rt2x00mmio_register_write(rt2x00dev, TXRX_CSR9, reg);
  break;
 default:
  break;
 }
}

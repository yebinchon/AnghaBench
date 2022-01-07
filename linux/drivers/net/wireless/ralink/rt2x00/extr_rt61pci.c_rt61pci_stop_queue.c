
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int tbtt_tasklet; } ;
struct data_queue {int qid; struct rt2x00_dev* rt2x00dev; } ;
 int TXRX_CSR0 ;
 int TXRX_CSR0_DISABLE_RX ;
 int TXRX_CSR9 ;
 int TXRX_CSR9_BEACON_GEN ;
 int TXRX_CSR9_TBTT_ENABLE ;
 int TXRX_CSR9_TSF_TICKING ;
 int TX_CNTL_CSR ;
 int TX_CNTL_CSR_ABORT_TX_AC0 ;
 int TX_CNTL_CSR_ABORT_TX_AC1 ;
 int TX_CNTL_CSR_ABORT_TX_AC2 ;
 int TX_CNTL_CSR_ABORT_TX_AC3 ;
 int rt2x00_set_field32 (int *,int ,int) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void rt61pci_stop_queue(struct data_queue *queue)
{
 struct rt2x00_dev *rt2x00dev = queue->rt2x00dev;
 u32 reg;

 switch (queue->qid) {
 case 130:
  reg = rt2x00mmio_register_read(rt2x00dev, TX_CNTL_CSR);
  rt2x00_set_field32(&reg, TX_CNTL_CSR_ABORT_TX_AC0, 1);
  rt2x00mmio_register_write(rt2x00dev, TX_CNTL_CSR, reg);
  break;
 case 131:
  reg = rt2x00mmio_register_read(rt2x00dev, TX_CNTL_CSR);
  rt2x00_set_field32(&reg, TX_CNTL_CSR_ABORT_TX_AC1, 1);
  rt2x00mmio_register_write(rt2x00dev, TX_CNTL_CSR, reg);
  break;
 case 133:
  reg = rt2x00mmio_register_read(rt2x00dev, TX_CNTL_CSR);
  rt2x00_set_field32(&reg, TX_CNTL_CSR_ABORT_TX_AC2, 1);
  rt2x00mmio_register_write(rt2x00dev, TX_CNTL_CSR, reg);
  break;
 case 132:
  reg = rt2x00mmio_register_read(rt2x00dev, TX_CNTL_CSR);
  rt2x00_set_field32(&reg, TX_CNTL_CSR_ABORT_TX_AC3, 1);
  rt2x00mmio_register_write(rt2x00dev, TX_CNTL_CSR, reg);
  break;
 case 128:
  reg = rt2x00mmio_register_read(rt2x00dev, TXRX_CSR0);
  rt2x00_set_field32(&reg, TXRX_CSR0_DISABLE_RX, 1);
  rt2x00mmio_register_write(rt2x00dev, TXRX_CSR0, reg);
  break;
 case 129:
  reg = rt2x00mmio_register_read(rt2x00dev, TXRX_CSR9);
  rt2x00_set_field32(&reg, TXRX_CSR9_TSF_TICKING, 0);
  rt2x00_set_field32(&reg, TXRX_CSR9_TBTT_ENABLE, 0);
  rt2x00_set_field32(&reg, TXRX_CSR9_BEACON_GEN, 0);
  rt2x00mmio_register_write(rt2x00dev, TXRX_CSR9, reg);




  tasklet_kill(&rt2x00dev->tbtt_tasklet);
  break;
 default:
  break;
 }
}

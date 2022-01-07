
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int tbtt_tasklet; } ;
struct data_queue {int qid; struct rt2x00_dev* rt2x00dev; } ;


 int CSR14 ;
 int CSR14_BEACON_GEN ;
 int CSR14_TBCN ;
 int CSR14_TSF_COUNT ;





 int RXCSR0 ;
 int RXCSR0_DISABLE_RX ;
 int TXCSR0 ;
 int TXCSR0_ABORT ;
 int rt2x00_set_field32 (int *,int ,int) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void rt2400pci_stop_queue(struct data_queue *queue)
{
 struct rt2x00_dev *rt2x00dev = queue->rt2x00dev;
 u32 reg;

 switch (queue->qid) {
 case 131:
 case 132:
 case 130:
  reg = rt2x00mmio_register_read(rt2x00dev, TXCSR0);
  rt2x00_set_field32(&reg, TXCSR0_ABORT, 1);
  rt2x00mmio_register_write(rt2x00dev, TXCSR0, reg);
  break;
 case 128:
  reg = rt2x00mmio_register_read(rt2x00dev, RXCSR0);
  rt2x00_set_field32(&reg, RXCSR0_DISABLE_RX, 1);
  rt2x00mmio_register_write(rt2x00dev, RXCSR0, reg);
  break;
 case 129:
  reg = rt2x00mmio_register_read(rt2x00dev, CSR14);
  rt2x00_set_field32(&reg, CSR14_TSF_COUNT, 0);
  rt2x00_set_field32(&reg, CSR14_TBCN, 0);
  rt2x00_set_field32(&reg, CSR14_BEACON_GEN, 0);
  rt2x00mmio_register_write(rt2x00dev, CSR14, reg);




  tasklet_kill(&rt2x00dev->tbtt_tasklet);
  break;
 default:
  break;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fintek_8250 {int pid; int index; } ;







 int F81866_FIFO_CTRL ;
 int F81866_IRQ_MODE ;
 int F81866_IRQ_MODE0 ;
 int F81866_IRQ_MODE1 ;
 int F81866_IRQ_SHARE ;
 int FINTEK_IRQ_MODE ;
 int IRQ_EDGE_HIGH ;
 int IRQ_LEVEL_LOW ;
 int IRQ_MODE_MASK ;
 int IRQ_SHARE ;
 int LDN ;
 int sio_write_mask_reg (struct fintek_8250*,int ,int ,int ) ;
 int sio_write_reg (struct fintek_8250*,int ,int ) ;

__attribute__((used)) static void fintek_8250_set_irq_mode(struct fintek_8250 *pdata, bool is_level)
{
 sio_write_reg(pdata, LDN, pdata->index);

 switch (pdata->pid) {
 case 128:
  sio_write_mask_reg(pdata, F81866_FIFO_CTRL, F81866_IRQ_MODE1,
       0);

 case 129:
  sio_write_mask_reg(pdata, F81866_IRQ_MODE, F81866_IRQ_SHARE,
       F81866_IRQ_SHARE);
  sio_write_mask_reg(pdata, F81866_IRQ_MODE, F81866_IRQ_MODE0,
       is_level ? 0 : F81866_IRQ_MODE0);
  break;

 case 131:
 case 130:
 case 132:
  sio_write_mask_reg(pdata, FINTEK_IRQ_MODE, IRQ_SHARE,
       IRQ_SHARE);
  sio_write_mask_reg(pdata, FINTEK_IRQ_MODE, IRQ_MODE_MASK,
       is_level ? IRQ_LEVEL_LOW : IRQ_EDGE_HIGH);
  break;
 }
}

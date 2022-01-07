
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fintek_8250 {int pid; } ;




 int FIFO_CTRL ;
 int FIFO_MODE_128 ;
 int FIFO_MODE_MASK ;
 int RXFTHR_MODE_4X ;
 int RXFTHR_MODE_MASK ;
 int sio_write_mask_reg (struct fintek_8250*,int ,int,int) ;

__attribute__((used)) static void fintek_8250_set_max_fifo(struct fintek_8250 *pdata)
{
 switch (pdata->pid) {
 case 129:
 case 128:
  sio_write_mask_reg(pdata, FIFO_CTRL,
       FIFO_MODE_MASK | RXFTHR_MODE_MASK,
       FIFO_MODE_128 | RXFTHR_MODE_4X);
  break;

 default:
  break;
 }
}

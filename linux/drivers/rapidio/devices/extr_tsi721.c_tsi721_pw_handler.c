
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tsi721_device {int pw_work; scalar_t__ regs; int pw_fifo_lock; int pw_discard_count; int pw_fifo; } ;


 int TSI721_RIO_PW_MSG_SIZE ;
 scalar_t__ TSI721_RIO_PW_RX_CAPT (int) ;
 scalar_t__ TSI721_RIO_PW_RX_STAT ;
 int TSI721_RIO_PW_RX_STAT_PW_DISC ;
 int TSI721_RIO_PW_RX_STAT_PW_VAL ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int kfifo_avail (int *) ;
 int kfifo_in (int *,int*,int) ;
 int schedule_work (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
tsi721_pw_handler(struct tsi721_device *priv)
{
 u32 pw_stat;
 u32 pw_buf[TSI721_RIO_PW_MSG_SIZE/sizeof(u32)];


 pw_stat = ioread32(priv->regs + TSI721_RIO_PW_RX_STAT);

 if (pw_stat & TSI721_RIO_PW_RX_STAT_PW_VAL) {
  pw_buf[0] = ioread32(priv->regs + TSI721_RIO_PW_RX_CAPT(0));
  pw_buf[1] = ioread32(priv->regs + TSI721_RIO_PW_RX_CAPT(1));
  pw_buf[2] = ioread32(priv->regs + TSI721_RIO_PW_RX_CAPT(2));
  pw_buf[3] = ioread32(priv->regs + TSI721_RIO_PW_RX_CAPT(3));




  spin_lock(&priv->pw_fifo_lock);
  if (kfifo_avail(&priv->pw_fifo) >= TSI721_RIO_PW_MSG_SIZE)
   kfifo_in(&priv->pw_fifo, pw_buf,
      TSI721_RIO_PW_MSG_SIZE);
  else
   priv->pw_discard_count++;
  spin_unlock(&priv->pw_fifo_lock);
 }


 iowrite32(TSI721_RIO_PW_RX_STAT_PW_DISC | TSI721_RIO_PW_RX_STAT_PW_VAL,
    priv->regs + TSI721_RIO_PW_RX_STAT);

 schedule_work(&priv->pw_work);

 return 0;
}

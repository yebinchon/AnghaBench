
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct aspeed_lpc_snoop_channel {int wq; int fifo; } ;


 int kfifo_initialized (int *) ;
 scalar_t__ kfifo_is_full (int *) ;
 int kfifo_put (int *,int ) ;
 int kfifo_skip (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void put_fifo_with_discard(struct aspeed_lpc_snoop_channel *chan, u8 val)
{
 if (!kfifo_initialized(&chan->fifo))
  return;
 if (kfifo_is_full(&chan->fifo))
  kfifo_skip(&chan->fifo);
 kfifo_put(&chan->fifo, val);
 wake_up_interruptible(&chan->wq);
}

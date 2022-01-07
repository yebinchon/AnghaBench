
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct file {int dummy; } ;
struct aspeed_lpc_snoop_channel {int fifo; int wq; } ;


 unsigned int POLLIN ;
 int kfifo_is_empty (int *) ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;
 struct aspeed_lpc_snoop_channel* snoop_file_to_chan (struct file*) ;

__attribute__((used)) static unsigned int snoop_file_poll(struct file *file,
        struct poll_table_struct *pt)
{
 struct aspeed_lpc_snoop_channel *chan = snoop_file_to_chan(file);

 poll_wait(file, &chan->wq, pt);
 return !kfifo_is_empty(&chan->fifo) ? POLLIN : 0;
}

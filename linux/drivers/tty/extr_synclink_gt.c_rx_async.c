
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgsl_icount {int frame; int parity; int rx; } ;
struct slgt_info {unsigned int rbuf_current; int rbuf_index; unsigned char ignore_status_mask; unsigned int rbuf_count; int port; int rx_timer; int device_name; struct slgt_desc* rbufs; struct mgsl_icount icount; } ;
struct slgt_desc {unsigned char* buf; } ;


 unsigned char BIT0 ;
 unsigned char BIT1 ;
 int DBGDATA (struct slgt_info*,unsigned char*,int,char*) ;
 int DBGISR (char*) ;
 int TTY_FRAME ;
 int TTY_PARITY ;
 scalar_t__ desc_complete (struct slgt_desc) ;
 int desc_count (struct slgt_desc) ;
 int free_rbufs (struct slgt_info*,unsigned int,unsigned int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int tty_flip_buffer_push (int *) ;
 int tty_insert_flip_char (int *,unsigned char,int) ;

__attribute__((used)) static void rx_async(struct slgt_info *info)
{
  struct mgsl_icount *icount = &info->icount;
 unsigned int start, end;
 unsigned char *p;
 unsigned char status;
 struct slgt_desc *bufs = info->rbufs;
 int i, count;
 int chars = 0;
 int stat;
 unsigned char ch;

 start = end = info->rbuf_current;

 while(desc_complete(bufs[end])) {
  count = desc_count(bufs[end]) - info->rbuf_index;
  p = bufs[end].buf + info->rbuf_index;

  DBGISR(("%s rx_async count=%d\n", info->device_name, count));
  DBGDATA(info, p, count, "rx");

  for(i=0 ; i < count; i+=2, p+=2) {
   ch = *p;
   icount->rx++;

   stat = 0;

   status = *(p + 1) & (BIT1 + BIT0);
   if (status) {
    if (status & BIT1)
     icount->parity++;
    else if (status & BIT0)
     icount->frame++;

    if (status & info->ignore_status_mask)
     continue;
    if (status & BIT1)
     stat = TTY_PARITY;
    else if (status & BIT0)
     stat = TTY_FRAME;
   }
   tty_insert_flip_char(&info->port, ch, stat);
   chars++;
  }

  if (i < count) {

   info->rbuf_index += i;
   mod_timer(&info->rx_timer, jiffies + 1);
   break;
  }

  info->rbuf_index = 0;
  free_rbufs(info, end, end);

  if (++end == info->rbuf_count)
   end = 0;


  if (end == start)
   break;
 }

 if (chars)
  tty_flip_buffer_push(&info->port);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int flush ;
 int flush_lock ;
 scalar_t__ is_flushing ;
 scalar_t__ is_indnum (int*) ;
 int lastind ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;
 int xoff ;

__attribute__((used)) static void read_buff_add(u_char c)
{
 static int ind = -1;

 if (c == 0x01) {
  unsigned long flags;

  spin_lock_irqsave(&flush_lock, flags);
  is_flushing = 0;
  wake_up_interruptible(&flush);
  spin_unlock_irqrestore(&flush_lock, flags);
 } else if (c == 0x13) {
  xoff = 1;
 } else if (c == 0x11) {
  xoff = 0;
 } else if (is_indnum(&c)) {
  if (ind == -1)
   ind = c;
  else
   ind = ind * 10 + c;
 } else if ((c > 31) && (c < 127)) {
  if (ind != -1)
   lastind = (u_char)ind;
  ind = -1;
 }
}

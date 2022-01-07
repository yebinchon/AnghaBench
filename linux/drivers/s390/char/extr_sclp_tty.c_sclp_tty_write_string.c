
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sclp_buffer {int dummy; } ;
struct list_head {int dummy; } ;
struct TYPE_3__ {void* next; } ;


 int HZ ;
 int SPACES_PER_TAB ;
 int __sclp_ttybuf_emit (struct sclp_buffer*) ;
 scalar_t__ jiffies ;
 int list_del (struct list_head*) ;
 scalar_t__ list_empty (TYPE_1__*) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ sclp_chars_in_buffer (struct sclp_buffer*) ;
 struct sclp_buffer* sclp_make_buffer (void*,int ,int ) ;
 int sclp_sync_wait () ;
 int sclp_tty_columns ;
 int sclp_tty_lock ;
 TYPE_1__ sclp_tty_pages ;
 int sclp_tty_timer ;
 struct sclp_buffer* sclp_ttybuf ;
 int sclp_write (struct sclp_buffer*,unsigned char const*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer_pending (int *) ;

__attribute__((used)) static int sclp_tty_write_string(const unsigned char *str, int count, int may_fail)
{
 unsigned long flags;
 void *page;
 int written;
 int overall_written;
 struct sclp_buffer *buf;

 if (count <= 0)
  return 0;
 overall_written = 0;
 spin_lock_irqsave(&sclp_tty_lock, flags);
 do {

  if (sclp_ttybuf == ((void*)0)) {
   while (list_empty(&sclp_tty_pages)) {
    spin_unlock_irqrestore(&sclp_tty_lock, flags);
    if (may_fail)
     goto out;
    else
     sclp_sync_wait();
    spin_lock_irqsave(&sclp_tty_lock, flags);
   }
   page = sclp_tty_pages.next;
   list_del((struct list_head *) page);
   sclp_ttybuf = sclp_make_buffer(page, sclp_tty_columns,
             SPACES_PER_TAB);
  }

  written = sclp_write(sclp_ttybuf, str, count);
  overall_written += written;
  if (written == count)
   break;





  buf = sclp_ttybuf;
  sclp_ttybuf = ((void*)0);
  spin_unlock_irqrestore(&sclp_tty_lock, flags);
  __sclp_ttybuf_emit(buf);
  spin_lock_irqsave(&sclp_tty_lock, flags);
  str += written;
  count -= written;
 } while (count > 0);

 if (sclp_ttybuf && sclp_chars_in_buffer(sclp_ttybuf) &&
     !timer_pending(&sclp_tty_timer)) {
  mod_timer(&sclp_tty_timer, jiffies + HZ / 10);
 }
 spin_unlock_irqrestore(&sclp_tty_lock, flags);
out:
 return overall_written;
}

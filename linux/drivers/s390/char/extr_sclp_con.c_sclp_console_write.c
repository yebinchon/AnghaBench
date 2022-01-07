
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct console {int dummy; } ;
struct TYPE_3__ {void* next; } ;


 int HZ ;
 scalar_t__ jiffies ;
 int list_del (struct list_head*) ;
 scalar_t__ list_empty (TYPE_1__*) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ sclp_chars_in_buffer (int *) ;
 int sclp_con_columns ;
 int sclp_con_lock ;
 TYPE_1__ sclp_con_pages ;
 scalar_t__ sclp_con_suspended ;
 int sclp_con_timer ;
 int sclp_con_width_htab ;
 int * sclp_conbuf ;
 int sclp_conbuf_emit () ;
 scalar_t__ sclp_console_drop_buffer () ;
 int sclp_console_full ;
 int * sclp_make_buffer (void*,int ,int ) ;
 int sclp_sync_wait () ;
 int sclp_write (int *,unsigned char const*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer_pending (int *) ;

__attribute__((used)) static void
sclp_console_write(struct console *console, const char *message,
     unsigned int count)
{
 unsigned long flags;
 void *page;
 int written;

 if (count == 0)
  return;
 spin_lock_irqsave(&sclp_con_lock, flags);




 do {

  if (sclp_conbuf == ((void*)0)) {
   if (list_empty(&sclp_con_pages))
    sclp_console_full++;
   while (list_empty(&sclp_con_pages)) {
    if (sclp_con_suspended)
     goto out;
    if (sclp_console_drop_buffer())
     break;
    spin_unlock_irqrestore(&sclp_con_lock, flags);
    sclp_sync_wait();
    spin_lock_irqsave(&sclp_con_lock, flags);
   }
   page = sclp_con_pages.next;
   list_del((struct list_head *) page);
   sclp_conbuf = sclp_make_buffer(page, sclp_con_columns,
             sclp_con_width_htab);
  }

  written = sclp_write(sclp_conbuf, (const unsigned char *)
         message, count);
  if (written == count)
   break;





  spin_unlock_irqrestore(&sclp_con_lock, flags);
  sclp_conbuf_emit();
  spin_lock_irqsave(&sclp_con_lock, flags);
  message += written;
  count -= written;
 } while (count > 0);

 if (sclp_conbuf != ((void*)0) && sclp_chars_in_buffer(sclp_conbuf) != 0 &&
     !timer_pending(&sclp_con_timer)) {
  mod_timer(&sclp_con_timer, jiffies + HZ / 10);
 }
out:
 spin_unlock_irqrestore(&sclp_con_lock, flags);
}

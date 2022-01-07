
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct sclp_buffer {int dummy; } ;


 int __sclp_ttybuf_emit (struct sclp_buffer*) ;
 int sclp_tty_lock ;
 struct sclp_buffer* sclp_ttybuf ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
sclp_tty_timeout(struct timer_list *unused)
{
 unsigned long flags;
 struct sclp_buffer *buf;

 spin_lock_irqsave(&sclp_tty_lock, flags);
 buf = sclp_ttybuf;
 sclp_ttybuf = ((void*)0);
 spin_unlock_irqrestore(&sclp_tty_lock, flags);

 if (buf != ((void*)0)) {
  __sclp_ttybuf_emit(buf);
 }
}

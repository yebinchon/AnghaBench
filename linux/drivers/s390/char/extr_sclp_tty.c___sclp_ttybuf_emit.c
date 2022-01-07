
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sclp_buffer {int list; } ;


 int list_add_tail (int *,int *) ;
 int sclp_emit_buffer (struct sclp_buffer*,int (*) (struct sclp_buffer*,int)) ;
 int sclp_tty_buffer_count ;
 int sclp_tty_lock ;
 int sclp_tty_outqueue ;
 int sclp_ttybuf_callback (struct sclp_buffer*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void
__sclp_ttybuf_emit(struct sclp_buffer *buffer)
{
 unsigned long flags;
 int count;
 int rc;

 spin_lock_irqsave(&sclp_tty_lock, flags);
 list_add_tail(&buffer->list, &sclp_tty_outqueue);
 count = sclp_tty_buffer_count++;
 spin_unlock_irqrestore(&sclp_tty_lock, flags);
 if (count)
  return;
 rc = sclp_emit_buffer(buffer, sclp_ttybuf_callback);
 if (rc)
  sclp_ttybuf_callback(buffer, rc);
}

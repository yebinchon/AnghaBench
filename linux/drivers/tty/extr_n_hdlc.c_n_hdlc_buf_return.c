
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct n_hdlc_buf_list {int spinlock; int count; int list; } ;
struct n_hdlc_buf {int list_item; } ;


 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void n_hdlc_buf_return(struct n_hdlc_buf_list *buf_list,
      struct n_hdlc_buf *buf)
{
 unsigned long flags;

 spin_lock_irqsave(&buf_list->spinlock, flags);

 list_add(&buf->list_item, &buf_list->list);
 buf_list->count++;

 spin_unlock_irqrestore(&buf_list->spinlock, flags);
}

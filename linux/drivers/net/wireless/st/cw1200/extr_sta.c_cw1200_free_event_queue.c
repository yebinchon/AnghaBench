
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cw1200_common {int event_queue_lock; int event_queue; } ;


 int LIST_HEAD (int ) ;
 int __cw1200_free_event_queue (int *) ;
 int list ;
 int list_splice_init (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void cw1200_free_event_queue(struct cw1200_common *priv)
{
 LIST_HEAD(list);

 spin_lock(&priv->event_queue_lock);
 list_splice_init(&priv->event_queue, &list);
 spin_unlock(&priv->event_queue_lock);

 __cw1200_free_event_queue(&list);
}

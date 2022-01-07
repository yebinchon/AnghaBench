
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wsm_buf {int dummy; } ;
struct TYPE_2__ {void* data; void* id; } ;
struct cw1200_wsm_event {int link; TYPE_1__ evt; } ;
struct cw1200_common {scalar_t__ mode; int event_handler; int workqueue; int event_queue_lock; int event_queue; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ NL80211_IFTYPE_UNSPECIFIED ;
 void* WSM_GET32 (struct wsm_buf*) ;
 int kfree (struct cw1200_wsm_event*) ;
 struct cw1200_wsm_event* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int pr_debug (char*,void*,void*) ;
 int queue_work (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int wsm_event_indication(struct cw1200_common *priv, struct wsm_buf *buf)
{
 int first;
 struct cw1200_wsm_event *event;

 if (priv->mode == NL80211_IFTYPE_UNSPECIFIED) {

  return 0;
 }

 event = kzalloc(sizeof(struct cw1200_wsm_event), GFP_KERNEL);
 if (!event)
  return -ENOMEM;

 event->evt.id = WSM_GET32(buf);
 event->evt.data = WSM_GET32(buf);

 pr_debug("[WSM] Event: %d(%d)\n",
   event->evt.id, event->evt.data);

 spin_lock(&priv->event_queue_lock);
 first = list_empty(&priv->event_queue);
 list_add_tail(&event->link, &priv->event_queue);
 spin_unlock(&priv->event_queue_lock);

 if (first)
  queue_work(priv->workqueue, &priv->event_handler);

 return 0;

underflow:
 kfree(event);
 return -EINVAL;
}

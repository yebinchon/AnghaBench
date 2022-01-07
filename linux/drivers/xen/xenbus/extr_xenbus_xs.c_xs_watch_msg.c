
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xs_watch_event {char const* path; char const* token; int list; int * handle; scalar_t__ body; int len; } ;


 int EINVAL ;
 int count_strings (scalar_t__,int ) ;
 int * find_watch (char const*) ;
 int kfree (struct xs_watch_event*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ strchr (scalar_t__,char) ;
 int wake_up (int *) ;
 int watch_events ;
 int watch_events_lock ;
 int watch_events_waitq ;
 int watches_lock ;

int xs_watch_msg(struct xs_watch_event *event)
{
 if (count_strings(event->body, event->len) != 2) {
  kfree(event);
  return -EINVAL;
 }
 event->path = (const char *)event->body;
 event->token = (const char *)strchr(event->body, '\0') + 1;

 spin_lock(&watches_lock);
 event->handle = find_watch(event->token);
 if (event->handle != ((void*)0)) {
  spin_lock(&watch_events_lock);
  list_add_tail(&event->list, &watch_events);
  wake_up(&watch_events_waitq);
  spin_unlock(&watch_events_lock);
 } else
  kfree(event);
 spin_unlock(&watches_lock);

 return 0;
}

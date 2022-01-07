
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec_event_queue {int dummy; } ;
typedef struct ec_event_queue ec_event ;


 struct ec_event_queue* event_queue_pop (struct ec_event_queue*) ;
 int kfree (struct ec_event_queue*) ;

__attribute__((used)) static void event_queue_free(struct ec_event_queue *q)
{
 struct ec_event *event;

 while ((event = event_queue_pop(q)) != ((void*)0))
  kfree(event);

 kfree(q);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec_event_queue {int capacity; } ;


 int GFP_KERNEL ;
 int entries ;
 struct ec_event_queue* kzalloc (int ,int ) ;
 int struct_size (struct ec_event_queue*,int ,int) ;

__attribute__((used)) static struct ec_event_queue *event_queue_new(int capacity)
{
 struct ec_event_queue *q;

 q = kzalloc(struct_size(q, entries, capacity), GFP_KERNEL);
 if (!q)
  return ((void*)0);

 q->capacity = capacity;

 return q;
}

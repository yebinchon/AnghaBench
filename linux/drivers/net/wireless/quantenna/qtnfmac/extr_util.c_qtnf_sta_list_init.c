
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtnf_sta_list {int size; int head; } ;


 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 scalar_t__ unlikely (int) ;

void qtnf_sta_list_init(struct qtnf_sta_list *list)
{
 if (unlikely(!list))
  return;

 INIT_LIST_HEAD(&list->head);
 atomic_set(&list->size, 0);
}

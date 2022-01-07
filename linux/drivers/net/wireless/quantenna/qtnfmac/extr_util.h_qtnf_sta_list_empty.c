
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtnf_sta_list {int head; } ;


 int list_empty (int *) ;

__attribute__((used)) static inline bool qtnf_sta_list_empty(const struct qtnf_sta_list *list)
{
 return list_empty(&list->head);
}

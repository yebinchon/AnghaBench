
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* prev; struct list_head* next; } ;



__attribute__((used)) static inline int
csio_list_deleted(struct list_head *list)
{
 return ((list->next == list) && (list->prev == list));
}

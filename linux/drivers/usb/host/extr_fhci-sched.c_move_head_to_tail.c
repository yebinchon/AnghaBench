
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* next; } ;


 int list_empty (struct list_head*) ;
 int list_move_tail (struct list_head*,struct list_head*) ;

__attribute__((used)) static void move_head_to_tail(struct list_head *list)
{
 struct list_head *node = list->next;

 if (!list_empty(list)) {
  list_move_tail(node, list);
 }
}

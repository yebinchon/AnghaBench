
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 int list_is_last (struct list_head const*,struct list_head const*) ;

__attribute__((used)) static inline int is_first_entry(const struct list_head *list,
 const struct list_head *head)
{
 return list_is_last(head, list);
}

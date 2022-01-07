
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_quehead {struct sym_quehead* blink; } ;


 int __sym_que_del (struct sym_quehead*,struct sym_quehead*) ;

__attribute__((used)) static inline struct sym_quehead *sym_remque_tail(struct sym_quehead *head)
{
 struct sym_quehead *elem = head->blink;

 if (elem != head)
  __sym_que_del(elem->blink, head);
 else
  elem = 0;
 return elem;
}

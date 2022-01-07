
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_quehead {struct sym_quehead* flink; } ;


 int __sym_que_del (struct sym_quehead*,struct sym_quehead*) ;

__attribute__((used)) static inline struct sym_quehead *sym_remque_head(struct sym_quehead *head)
{
 struct sym_quehead *elem = head->flink;

 if (elem != head)
  __sym_que_del(head, elem->flink);
 else
  elem = ((void*)0);
 return elem;
}

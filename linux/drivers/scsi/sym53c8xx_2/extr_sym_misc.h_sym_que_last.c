
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_quehead {struct sym_quehead* blink; } ;



__attribute__((used)) static inline struct sym_quehead *sym_que_last(struct sym_quehead *head)
{
 return (head->blink == head) ? 0 : head->blink;
}

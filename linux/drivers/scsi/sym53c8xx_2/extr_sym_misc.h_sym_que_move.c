
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_quehead {struct sym_quehead* blink; struct sym_quehead* flink; } ;



__attribute__((used)) static inline void sym_que_move(struct sym_quehead *orig,
 struct sym_quehead *dest)
{
 struct sym_quehead *first, *last;

 first = orig->flink;
 if (first != orig) {
  first->blink = dest;
  dest->flink = first;
  last = orig->blink;
  last->flink = dest;
  dest->blink = last;
  orig->flink = orig;
  orig->blink = orig;
 } else {
  dest->flink = dest;
  dest->blink = dest;
 }
}

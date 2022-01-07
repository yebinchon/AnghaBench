
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvumi_tag {unsigned short size; unsigned short top; unsigned short* stack; } ;


 int BUG_ON (int) ;

__attribute__((used)) static void tag_init(struct mvumi_tag *st, unsigned short size)
{
 unsigned short i;
 BUG_ON(size != st->size);
 st->top = size;
 for (i = 0; i < size; i++)
  st->stack[i] = size - 1 - i;
}

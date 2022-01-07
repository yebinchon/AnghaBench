
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvumi_tag {scalar_t__ top; } ;



__attribute__((used)) static bool tag_is_empty(struct mvumi_tag *st)
{
 if (st->top == 0)
  return 1;
 else
  return 0;
}

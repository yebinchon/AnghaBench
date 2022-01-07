
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvumi_tag {size_t top; unsigned short* stack; } ;
struct mvumi_hba {int dummy; } ;


 int BUG_ON (int) ;

__attribute__((used)) static unsigned short tag_get_one(struct mvumi_hba *mhba, struct mvumi_tag *st)
{
 BUG_ON(st->top <= 0);
 return st->stack[--st->top];
}

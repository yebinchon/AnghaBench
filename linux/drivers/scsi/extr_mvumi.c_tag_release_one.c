
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvumi_tag {scalar_t__ top; scalar_t__ size; unsigned short* stack; } ;
struct mvumi_hba {int dummy; } ;


 int BUG_ON (int) ;

__attribute__((used)) static void tag_release_one(struct mvumi_hba *mhba, struct mvumi_tag *st,
       unsigned short tag)
{
 BUG_ON(st->top >= st->size);
 st->stack[st->top++] = tag;
}

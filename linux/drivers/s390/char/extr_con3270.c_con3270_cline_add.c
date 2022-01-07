
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct con3270 {int nr_lines; int lines; TYPE_1__* cline; } ;
struct TYPE_2__ {int list; } ;


 int con3270_rebuild_update (struct con3270*) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;

__attribute__((used)) static inline void
con3270_cline_add(struct con3270 *cp)
{
 if (!list_empty(&cp->cline->list))

  return;
 list_add_tail(&cp->cline->list, &cp->lines);
 cp->nr_lines++;
 con3270_rebuild_update(cp);
}

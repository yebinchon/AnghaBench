
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct SIS_OH {TYPE_2__* poh_prev; TYPE_1__* poh_next; } ;
struct TYPE_4__ {TYPE_1__* poh_next; } ;
struct TYPE_3__ {TYPE_2__* poh_prev; } ;



__attribute__((used)) static void
sisfb_delete_node(struct SIS_OH *poh)
{
 poh->poh_prev->poh_next = poh->poh_next;
 poh->poh_next->poh_prev = poh->poh_prev;
}

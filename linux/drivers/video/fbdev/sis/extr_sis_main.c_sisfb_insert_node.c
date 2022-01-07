
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SIS_OH {struct SIS_OH* poh_next; struct SIS_OH* poh_prev; } ;



__attribute__((used)) static void
sisfb_insert_node(struct SIS_OH *pohList, struct SIS_OH *poh)
{
 struct SIS_OH *pohTemp = pohList->poh_next;

 pohList->poh_next = poh;
 pohTemp->poh_prev = poh;

 poh->poh_prev = pohList;
 poh->poh_next = pohTemp;
}

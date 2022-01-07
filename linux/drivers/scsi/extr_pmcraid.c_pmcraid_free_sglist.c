
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcraid_sglist {int order; int scatterlist; } ;


 int kfree (struct pmcraid_sglist*) ;
 int sgl_free_order (int ,int ) ;

__attribute__((used)) static void pmcraid_free_sglist(struct pmcraid_sglist *sglist)
{
 sgl_free_order(sglist->scatterlist, sglist->order);
 kfree(sglist);
}

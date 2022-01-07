
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc_mem_entry {int node; } ;
struct rproc {int carveouts; } ;


 int list_add_tail (int *,int *) ;

void rproc_add_carveout(struct rproc *rproc, struct rproc_mem_entry *mem)
{
 list_add_tail(&mem->node, &rproc->carveouts);
}

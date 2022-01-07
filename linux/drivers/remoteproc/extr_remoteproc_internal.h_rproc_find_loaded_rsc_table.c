
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rproc {TYPE_1__* ops; } ;
struct resource_table {int dummy; } ;
struct firmware {int dummy; } ;
struct TYPE_2__ {struct resource_table* (* find_loaded_rsc_table ) (struct rproc*,struct firmware const*) ;} ;


 struct resource_table* stub1 (struct rproc*,struct firmware const*) ;

__attribute__((used)) static inline
struct resource_table *rproc_find_loaded_rsc_table(struct rproc *rproc,
         const struct firmware *fw)
{
 if (rproc->ops->find_loaded_rsc_table)
  return rproc->ops->find_loaded_rsc_table(rproc, fw);

 return ((void*)0);
}

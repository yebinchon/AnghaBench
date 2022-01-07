
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rproc {TYPE_1__* ops; } ;
struct firmware {int dummy; } ;
struct TYPE_2__ {int (* get_boot_addr ) (struct rproc*,struct firmware const*) ;} ;


 int stub1 (struct rproc*,struct firmware const*) ;

__attribute__((used)) static inline
u32 rproc_get_boot_addr(struct rproc *rproc, const struct firmware *fw)
{
 if (rproc->ops->get_boot_addr)
  return rproc->ops->get_boot_addr(rproc, fw);

 return 0;
}

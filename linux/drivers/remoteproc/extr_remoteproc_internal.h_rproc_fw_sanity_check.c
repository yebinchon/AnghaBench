
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rproc {TYPE_1__* ops; } ;
struct firmware {int dummy; } ;
struct TYPE_2__ {int (* sanity_check ) (struct rproc*,struct firmware const*) ;} ;


 int stub1 (struct rproc*,struct firmware const*) ;

__attribute__((used)) static inline
int rproc_fw_sanity_check(struct rproc *rproc, const struct firmware *fw)
{
 if (rproc->ops->sanity_check)
  return rproc->ops->sanity_check(rproc, fw);

 return 0;
}

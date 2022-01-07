
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rproc {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* handle_rsc ) (struct rproc*,int ,void*,int,int) ;} ;


 int RSC_IGNORED ;
 int stub1 (struct rproc*,int ,void*,int,int) ;

__attribute__((used)) static inline
int rproc_handle_rsc(struct rproc *rproc, u32 rsc_type, void *rsc, int offset,
       int avail)
{
 if (rproc->ops->handle_rsc)
  return rproc->ops->handle_rsc(rproc, rsc_type, rsc, offset,
           avail);

 return RSC_IGNORED;
}

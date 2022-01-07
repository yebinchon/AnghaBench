
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wa_rpipe {int refcnt; } ;


 int kref_put (int *,int ) ;
 int rpipe_destroy ;

__attribute__((used)) static inline void rpipe_put(struct wa_rpipe *rpipe)
{
 kref_put(&rpipe->refcnt, rpipe_destroy);

}

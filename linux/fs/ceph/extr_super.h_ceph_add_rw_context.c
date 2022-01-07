
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_rw_context {int list; } ;
struct ceph_file_info {int rw_contexts_lock; int rw_contexts; } ;


 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void ceph_add_rw_context(struct ceph_file_info *cf,
           struct ceph_rw_context *ctx)
{
 spin_lock(&cf->rw_contexts_lock);
 list_add(&ctx->list, &cf->rw_contexts);
 spin_unlock(&cf->rw_contexts_lock);
}

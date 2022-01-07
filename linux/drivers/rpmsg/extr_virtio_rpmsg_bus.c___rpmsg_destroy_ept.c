
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtproc_info {int endpoints_lock; int endpoints; } ;
struct rpmsg_endpoint {int refcount; int cb_lock; int * cb; int addr; } ;


 int __ept_release ;
 int idr_remove (int *,int ) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
__rpmsg_destroy_ept(struct virtproc_info *vrp, struct rpmsg_endpoint *ept)
{

 mutex_lock(&vrp->endpoints_lock);
 idr_remove(&vrp->endpoints, ept->addr);
 mutex_unlock(&vrp->endpoints_lock);


 mutex_lock(&ept->cb_lock);
 ept->cb = ((void*)0);
 mutex_unlock(&ept->cb_lock);

 kref_put(&ept->refcount, __ept_release);
}

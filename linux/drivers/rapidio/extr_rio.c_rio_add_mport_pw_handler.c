
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_pwrite {int (* pwcback ) (struct rio_mport*,void*,union rio_pw_msg*,int) ;int node; void* context; } ;
struct rio_mport {int lock; int pwrites; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct rio_pwrite* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int rio_add_mport_pw_handler(struct rio_mport *mport, void *context,
        int (*pwcback)(struct rio_mport *mport,
        void *context, union rio_pw_msg *msg, int step))
{
 struct rio_pwrite *pwrite = kzalloc(sizeof(*pwrite), GFP_KERNEL);

 if (!pwrite)
  return -ENOMEM;

 pwrite->pwcback = pwcback;
 pwrite->context = context;
 mutex_lock(&mport->lock);
 list_add_tail(&pwrite->node, &mport->pwrites);
 mutex_unlock(&mport->lock);
 return 0;
}

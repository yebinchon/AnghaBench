
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_reqlist {int * buckets; int lock; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 unsigned int ZFCP_REQ_LIST_BUCKETS ;
 struct zfcp_reqlist* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static inline struct zfcp_reqlist *zfcp_reqlist_alloc(void)
{
 unsigned int i;
 struct zfcp_reqlist *rl;

 rl = kzalloc(sizeof(struct zfcp_reqlist), GFP_KERNEL);
 if (!rl)
  return ((void*)0);

 spin_lock_init(&rl->lock);

 for (i = 0; i < ZFCP_REQ_LIST_BUCKETS; i++)
  INIT_LIST_HEAD(&rl->buckets[i]);

 return rl;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_qdio {int stat_lock; int req_q_lock; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {struct zfcp_qdio* qdio; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct zfcp_qdio*) ;
 struct zfcp_qdio* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 scalar_t__ zfcp_qdio_allocate (struct zfcp_qdio*) ;

int zfcp_qdio_setup(struct zfcp_adapter *adapter)
{
 struct zfcp_qdio *qdio;

 qdio = kzalloc(sizeof(struct zfcp_qdio), GFP_KERNEL);
 if (!qdio)
  return -ENOMEM;

 qdio->adapter = adapter;

 if (zfcp_qdio_allocate(qdio)) {
  kfree(qdio);
  return -ENOMEM;
 }

 spin_lock_init(&qdio->req_q_lock);
 spin_lock_init(&qdio->stat_lock);

 adapter->qdio = qdio;
 return 0;
}

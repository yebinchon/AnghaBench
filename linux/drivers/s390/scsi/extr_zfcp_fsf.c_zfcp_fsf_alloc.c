
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_fsf_req {int * pool; } ;
typedef int mempool_t ;


 int GFP_ATOMIC ;
 struct zfcp_fsf_req* kmalloc (int,int ) ;
 scalar_t__ likely (int *) ;
 struct zfcp_fsf_req* mempool_alloc (int *,int ) ;
 int memset (struct zfcp_fsf_req*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct zfcp_fsf_req *zfcp_fsf_alloc(mempool_t *pool)
{
 struct zfcp_fsf_req *req;

 if (likely(pool))
  req = mempool_alloc(pool, GFP_ATOMIC);
 else
  req = kmalloc(sizeof(*req), GFP_ATOMIC);

 if (unlikely(!req))
  return ((void*)0);

 memset(req, 0, sizeof(*req));
 req->pool = pool;
 return req;
}

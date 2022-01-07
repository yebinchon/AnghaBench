
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int __scm_alloc_rq () ;
 int aidaw_pool ;
 int max (unsigned int,unsigned int) ;
 int mempool_create_page_pool (int ,int ) ;

__attribute__((used)) static int scm_alloc_rqs(unsigned int nrqs)
{
 int ret = 0;

 aidaw_pool = mempool_create_page_pool(max(nrqs/8, 1U), 0);
 if (!aidaw_pool)
  return -ENOMEM;

 while (nrqs-- && !ret)
  ret = __scm_alloc_rq();

 return ret;
}

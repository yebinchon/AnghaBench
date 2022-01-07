
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp1760_qh {int slot; int qtd_list; int qh_list; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 struct isp1760_qh* kmem_cache_zalloc (int ,int ) ;
 int qh_cachep ;

__attribute__((used)) static struct isp1760_qh *qh_alloc(gfp_t flags)
{
 struct isp1760_qh *qh;

 qh = kmem_cache_zalloc(qh_cachep, flags);
 if (!qh)
  return ((void*)0);

 INIT_LIST_HEAD(&qh->qh_list);
 INIT_LIST_HEAD(&qh->qtd_list);
 qh->slot = -1;

 return qh;
}

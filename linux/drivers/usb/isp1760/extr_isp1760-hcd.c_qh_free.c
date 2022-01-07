
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp1760_qh {int slot; int qtd_list; } ;


 int WARN_ON (int) ;
 int kmem_cache_free (int ,struct isp1760_qh*) ;
 int list_empty (int *) ;
 int qh_cachep ;

__attribute__((used)) static void qh_free(struct isp1760_qh *qh)
{
 WARN_ON(!list_empty(&qh->qtd_list));
 WARN_ON(qh->slot > -1);
 kmem_cache_free(qh_cachep, qh);
}

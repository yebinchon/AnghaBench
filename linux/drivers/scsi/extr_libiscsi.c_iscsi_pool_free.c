
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_pool {int max; int * pool; } ;


 int kfree (int ) ;
 int kvfree (int *) ;

void iscsi_pool_free(struct iscsi_pool *q)
{
 int i;

 for (i = 0; i < q->max; i++)
  kfree(q->pool[i]);
 kvfree(q->pool);
}

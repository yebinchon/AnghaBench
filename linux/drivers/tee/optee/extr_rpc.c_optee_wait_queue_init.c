
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct optee_wait_queue {int db; int mu; } ;


 int INIT_LIST_HEAD (int *) ;
 int mutex_init (int *) ;

void optee_wait_queue_init(struct optee_wait_queue *priv)
{
 mutex_init(&priv->mu);
 INIT_LIST_HEAD(&priv->db);
}

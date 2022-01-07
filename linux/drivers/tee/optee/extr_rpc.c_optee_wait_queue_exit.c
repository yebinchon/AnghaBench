
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct optee_wait_queue {int mu; } ;


 int mutex_destroy (int *) ;

void optee_wait_queue_exit(struct optee_wait_queue *priv)
{
 mutex_destroy(&priv->mu);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvobj_priv {int setbw_mutex; int setch_mutex; int h2c_fwcmd_mutex; int hw_init_mutex; } ;


 int kfree (struct dvobj_priv*) ;
 int mutex_destroy (int *) ;

void devobj_deinit(struct dvobj_priv *pdvobj)
{
 if (!pdvobj)
  return;

 mutex_destroy(&pdvobj->hw_init_mutex);
 mutex_destroy(&pdvobj->h2c_fwcmd_mutex);
 mutex_destroy(&pdvobj->setch_mutex);
 mutex_destroy(&pdvobj->setbw_mutex);

 kfree(pdvobj);
}

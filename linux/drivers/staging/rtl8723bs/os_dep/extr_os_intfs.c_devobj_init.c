
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct dvobj_priv {int* macid; int processing_dev_remove; TYPE_1__ cam_ctl; int disable_func; int lock; int setbw_mutex; int setch_mutex; int h2c_fwcmd_mutex; int hw_init_mutex; } ;


 int atomic_set (int *,int ) ;
 int mutex_init (int *) ;
 struct dvobj_priv* rtw_zmalloc (int) ;
 int spin_lock_init (int *) ;

struct dvobj_priv *devobj_init(void)
{
 struct dvobj_priv *pdvobj = ((void*)0);

 pdvobj = rtw_zmalloc(sizeof(*pdvobj));
 if (pdvobj == ((void*)0))
  return ((void*)0);

 mutex_init(&pdvobj->hw_init_mutex);
 mutex_init(&pdvobj->h2c_fwcmd_mutex);
 mutex_init(&pdvobj->setch_mutex);
 mutex_init(&pdvobj->setbw_mutex);

 spin_lock_init(&pdvobj->lock);

 pdvobj->macid[1] = 1;

 pdvobj->processing_dev_remove = 0;

 atomic_set(&pdvobj->disable_func, 0);

 spin_lock_init(&pdvobj->cam_ctl.lock);

 return pdvobj;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;
struct uwb_rc {TYPE_1__ uwb_beca; } ;
struct uwb_dev_addr {int dummy; } ;
struct uwb_dev {int dummy; } ;
struct uwb_beca_e {int uwb_dev; } ;


 struct uwb_beca_e* __uwb_beca_find_bydev (struct uwb_rc*,struct uwb_dev_addr const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct uwb_dev* uwb_dev_try_get (struct uwb_rc*,int ) ;

struct uwb_dev *uwb_dev_get_by_devaddr(struct uwb_rc *rc,
           const struct uwb_dev_addr *devaddr)
{
 struct uwb_dev *found = ((void*)0);
 struct uwb_beca_e *bce;

 mutex_lock(&rc->uwb_beca.mutex);
 bce = __uwb_beca_find_bydev(rc, devaddr);
 if (bce)
  found = uwb_dev_try_get(rc, bce->uwb_dev);
 mutex_unlock(&rc->uwb_beca.mutex);

 return found;
}

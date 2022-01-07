
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_mport {int pwrites; scalar_t__ pwe_refcnt; int lock; int * nscan; scalar_t__ id; int host_deviceid; int state; } ;


 int ENODEV ;
 int INIT_LIST_HEAD (int *) ;
 int RIO_DEVICE_INITIALIZING ;
 scalar_t__ RIO_MAX_MPORTS ;
 int atomic_set (int *,int ) ;
 int mutex_init (int *) ;
 scalar_t__ next_portid ;
 int pr_err (char*) ;
 int rio_get_hdid (scalar_t__) ;

int rio_mport_initialize(struct rio_mport *mport)
{
 if (next_portid >= RIO_MAX_MPORTS) {
  pr_err("RIO: reached specified max number of mports\n");
  return -ENODEV;
 }

 atomic_set(&mport->state, RIO_DEVICE_INITIALIZING);
 mport->id = next_portid++;
 mport->host_deviceid = rio_get_hdid(mport->id);
 mport->nscan = ((void*)0);
 mutex_init(&mport->lock);
 mport->pwe_refcnt = 0;
 INIT_LIST_HEAD(&mport->pwrites);

 return 0;
}

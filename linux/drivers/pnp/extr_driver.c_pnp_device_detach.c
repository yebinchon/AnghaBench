
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {scalar_t__ status; } ;


 scalar_t__ PNP_ATTACHED ;
 scalar_t__ PNP_READY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pnp_lock ;

void pnp_device_detach(struct pnp_dev *pnp_dev)
{
 mutex_lock(&pnp_lock);
 if (pnp_dev->status == PNP_ATTACHED)
  pnp_dev->status = PNP_READY;
 mutex_unlock(&pnp_lock);
}

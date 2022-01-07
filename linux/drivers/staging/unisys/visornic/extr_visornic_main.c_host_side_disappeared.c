
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visornic_devdata {int priv_lock; int * dev; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void host_side_disappeared(struct visornic_devdata *devdata)
{
 unsigned long flags;

 spin_lock_irqsave(&devdata->priv_lock, flags);

 devdata->dev = ((void*)0);
 spin_unlock_irqrestore(&devdata->priv_lock, flags);
}

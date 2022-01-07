
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhci_device {int priv_lock; int priv_rx; } ;


 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int vhci_priv_tx_empty(struct vhci_device *vdev)
{
 int empty = 0;
 unsigned long flags;

 spin_lock_irqsave(&vdev->priv_lock, flags);
 empty = list_empty(&vdev->priv_rx);
 spin_unlock_irqrestore(&vdev->priv_lock, flags);

 return empty;
}

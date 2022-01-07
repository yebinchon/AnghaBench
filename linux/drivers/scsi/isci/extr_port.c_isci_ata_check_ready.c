
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isci_remote_device {int dummy; } ;
struct isci_port {int active_phy_mask; int state; } ;
struct isci_host {int scic_lock; } ;
struct domain_device {TYPE_1__* port; } ;
struct TYPE_2__ {struct isci_port* lldd_port; } ;


 int IPORT_RESET_PENDING ;
 struct isci_host* dev_to_ihost (struct domain_device*) ;
 struct isci_remote_device* isci_lookup_device (struct domain_device*) ;
 int isci_put_device (struct isci_remote_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

int isci_ata_check_ready(struct domain_device *dev)
{
 struct isci_port *iport = dev->port->lldd_port;
 struct isci_host *ihost = dev_to_ihost(dev);
 struct isci_remote_device *idev;
 unsigned long flags;
 int rc = 0;

 spin_lock_irqsave(&ihost->scic_lock, flags);
 idev = isci_lookup_device(dev);
 spin_unlock_irqrestore(&ihost->scic_lock, flags);

 if (!idev)
  goto out;

 if (test_bit(IPORT_RESET_PENDING, &iport->state))
  goto out;

 rc = !!iport->active_phy_mask;
 out:
 isci_put_device(idev);

 return rc;
}

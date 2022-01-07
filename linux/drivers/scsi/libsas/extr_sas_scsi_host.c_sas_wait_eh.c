
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int shost; } ;
struct sas_ha_struct {TYPE_2__ core; int lock; int eh_wait_q; } ;
struct TYPE_4__ {int ap; } ;
struct domain_device {int state; TYPE_1__ sata_dev; TYPE_3__* port; } ;
struct TYPE_6__ {struct sas_ha_struct* ha; } ;


 int DEFINE_WAIT (int ) ;
 int SAS_DEV_EH_PENDING ;
 int TASK_UNINTERRUPTIBLE ;
 int ata_port_wait_eh (int ) ;
 scalar_t__ dev_is_sata (struct domain_device*) ;
 int finish_wait (int *,int *) ;
 int msleep (int) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 scalar_t__ scsi_host_in_recovery (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait ;

__attribute__((used)) static void sas_wait_eh(struct domain_device *dev)
{
 struct sas_ha_struct *ha = dev->port->ha;
 DEFINE_WAIT(wait);

 if (dev_is_sata(dev)) {
  ata_port_wait_eh(dev->sata_dev.ap);
  return;
 }
 retry:
 spin_lock_irq(&ha->lock);

 while (test_bit(SAS_DEV_EH_PENDING, &dev->state)) {
  prepare_to_wait(&ha->eh_wait_q, &wait, TASK_UNINTERRUPTIBLE);
  spin_unlock_irq(&ha->lock);
  schedule();
  spin_lock_irq(&ha->lock);
 }
 finish_wait(&ha->eh_wait_q, &wait);

 spin_unlock_irq(&ha->lock);


 if (scsi_host_in_recovery(ha->core.shost)) {
  msleep(10);
  goto retry;
 }
}

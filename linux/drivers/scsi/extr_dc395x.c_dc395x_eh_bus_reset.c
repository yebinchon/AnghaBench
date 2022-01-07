
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {int host_lock; } ;


 int __dc395x_eh_bus_reset (struct scsi_cmnd*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static int dc395x_eh_bus_reset(struct scsi_cmnd *cmd)
{
 int rc;

 spin_lock_irq(cmd->device->host->host_lock);
 rc = __dc395x_eh_bus_reset(cmd);
 spin_unlock_irq(cmd->device->host->host_lock);

 return rc;
}

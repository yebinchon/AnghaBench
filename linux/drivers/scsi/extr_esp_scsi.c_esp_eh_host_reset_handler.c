
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct esp {TYPE_2__* host; } ;
struct TYPE_4__ {int host_lock; } ;
struct TYPE_3__ {int host; } ;


 int SUCCESS ;
 int esp_bootup_reset (struct esp*) ;
 int esp_bus_reset_settle ;
 int esp_reset_cleanup (struct esp*) ;
 struct esp* shost_priv (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int ssleep (int ) ;

__attribute__((used)) static int esp_eh_host_reset_handler(struct scsi_cmnd *cmd)
{
 struct esp *esp = shost_priv(cmd->device->host);
 unsigned long flags;

 spin_lock_irqsave(esp->host->host_lock, flags);
 esp_bootup_reset(esp);
 esp_reset_cleanup(esp);
 spin_unlock_irqrestore(esp->host->host_lock, flags);

 ssleep(esp_bus_reset_settle);

 return SUCCESS;
}

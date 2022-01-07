
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {size_t id; } ;
struct mac_esp_priv {struct esp* esp; } ;
struct esp {TYPE_1__* host; struct mac_esp_priv* command_block; } ;
struct TYPE_2__ {unsigned int irq; } ;


 int ** esp_chips ;
 int esp_chips_lock ;
 int free_irq (unsigned int,int *) ;
 int kfree (struct mac_esp_priv*) ;
 struct mac_esp_priv* platform_get_drvdata (struct platform_device*) ;
 int scsi_esp_unregister (struct esp*) ;
 int scsi_host_put (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int esp_mac_remove(struct platform_device *dev)
{
 struct mac_esp_priv *mep = platform_get_drvdata(dev);
 struct esp *esp = mep->esp;
 unsigned int irq = esp->host->irq;

 scsi_esp_unregister(esp);

 spin_lock(&esp_chips_lock);
 esp_chips[dev->id] = ((void*)0);
 if (esp_chips[!dev->id] == ((void*)0)) {
  spin_unlock(&esp_chips_lock);
  free_irq(irq, ((void*)0));
 } else
  spin_unlock(&esp_chips_lock);

 kfree(mep);

 kfree(esp->command_block);

 scsi_host_put(esp->host);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {size_t id; int sdev_target; scalar_t__ tagged_supported; int host; } ;
struct esp_target_data {int flags; } ;
struct esp {int num_tags; struct esp_target_data* target; } ;


 int ESP_TGT_DISCONNECT ;
 int scsi_change_queue_depth (struct scsi_device*,int ) ;
 struct esp* shost_priv (int ) ;
 int spi_dv_device (struct scsi_device*) ;
 int spi_initial_dv (int ) ;

__attribute__((used)) static int esp_slave_configure(struct scsi_device *dev)
{
 struct esp *esp = shost_priv(dev->host);
 struct esp_target_data *tp = &esp->target[dev->id];

 if (dev->tagged_supported)
  scsi_change_queue_depth(dev, esp->num_tags);

 tp->flags |= ESP_TGT_DISCONNECT;

 if (!spi_initial_dv(dev->sdev_target))
  spi_dv_device(dev);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int shost; } ;
struct sas_ha_struct {TYPE_3__ core; } ;
struct TYPE_4__ {struct ata_port* ap; } ;
struct domain_device {TYPE_2__* port; TYPE_1__ sata_dev; } ;
struct ata_port {int dummy; } ;
typedef int async_cookie_t ;
struct TYPE_5__ {struct sas_ha_struct* ha; } ;


 int KERN_DEBUG ;
 int ata_scsi_port_error_handler (int ,struct ata_port*) ;
 int sas_ata_printk (int ,struct domain_device*,char*) ;
 int sas_put_device (struct domain_device*) ;

__attribute__((used)) static void async_sas_ata_eh(void *data, async_cookie_t cookie)
{
 struct domain_device *dev = data;
 struct ata_port *ap = dev->sata_dev.ap;
 struct sas_ha_struct *ha = dev->port->ha;

 sas_ata_printk(KERN_DEBUG, dev, "dev error handler\n");
 ata_scsi_port_error_handler(ha->core.shost, ap);
 sas_put_device(dev);
}

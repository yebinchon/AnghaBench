
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct domain_device {scalar_t__ dev_type; scalar_t__ frame_rcvd; scalar_t__ lldd_dev; TYPE_2__* port; } ;
struct dev_to_host_fis {int status; } ;
struct asd_ha_struct {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ha; } ;
struct TYPE_3__ {struct asd_ha_struct* lldd_ha; } ;


 int ATA_CMD_SCBPTR ;
 int NCQ_DATA_SCB_PTR ;
 scalar_t__ SAS_SATA_DEV ;
 scalar_t__ SAS_SATA_PM ;
 scalar_t__ SAS_SATA_PM_PORT ;
 int SATA_STATUS ;
 int asd_ddbsite_write_byte (struct asd_ha_struct*,int,int ,int ) ;
 int asd_ddbsite_write_word (struct asd_ha_struct*,int,int ,int) ;

__attribute__((used)) static int asd_init_sata(struct domain_device *dev)
{
 struct asd_ha_struct *asd_ha = dev->port->ha->lldd_ha;
 int ddb = (int) (unsigned long) dev->lldd_dev;

 asd_ddbsite_write_word(asd_ha, ddb, ATA_CMD_SCBPTR, 0xFFFF);
 if (dev->dev_type == SAS_SATA_DEV || dev->dev_type == SAS_SATA_PM ||
     dev->dev_type == SAS_SATA_PM_PORT) {
  struct dev_to_host_fis *fis = (struct dev_to_host_fis *)
   dev->frame_rcvd;
  asd_ddbsite_write_byte(asd_ha, ddb, SATA_STATUS, fis->status);
 }
 asd_ddbsite_write_word(asd_ha, ddb, NCQ_DATA_SCB_PTR, 0xFFFF);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {scalar_t__* cmnd; TYPE_1__* device; } ;
struct MPT3SAS_DEVICE {int ata_command_pending; } ;
struct TYPE_2__ {struct MPT3SAS_DEVICE* hostdata; } ;


 scalar_t__ ATA_12 ;
 scalar_t__ ATA_16 ;
 int clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int _scsih_set_satl_pending(struct scsi_cmnd *scmd, bool pending)
{
 struct MPT3SAS_DEVICE *priv = scmd->device->hostdata;

 if (scmd->cmnd[0] != ATA_12 && scmd->cmnd[0] != ATA_16)
  return 0;

 if (pending)
  return test_and_set_bit(0, &priv->ata_command_pending);

 clear_bit(0, &priv->ata_command_pending);
 return 0;
}

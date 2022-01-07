
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ typ; } ;
struct snic_tgt {TYPE_1__ tdata; } ;
struct scsi_device {int dummy; } ;


 scalar_t__ SNIC_TGT_DAS ;
 int scsi_target (struct scsi_device*) ;
 struct snic_tgt* starget_to_tgt (int ) ;

__attribute__((used)) static int
snic_dev_reset_supported(struct scsi_device *sdev)
{
 struct snic_tgt *tgt = starget_to_tgt(scsi_target(sdev));

 if (tgt->tdata.typ == SNIC_TGT_DAS)
  return 0;

 return 1;
}

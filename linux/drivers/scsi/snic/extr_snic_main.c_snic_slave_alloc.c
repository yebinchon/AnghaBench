
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snic_tgt {int dummy; } ;
struct scsi_device {int dummy; } ;


 int ENXIO ;
 int scsi_target (struct scsi_device*) ;
 scalar_t__ snic_tgt_chkready (struct snic_tgt*) ;
 struct snic_tgt* starget_to_tgt (int ) ;

__attribute__((used)) static int
snic_slave_alloc(struct scsi_device *sdev)
{
 struct snic_tgt *tgt = starget_to_tgt(scsi_target(sdev));

 if (!tgt || snic_tgt_chkready(tgt))
  return -ENXIO;

 return 0;
}

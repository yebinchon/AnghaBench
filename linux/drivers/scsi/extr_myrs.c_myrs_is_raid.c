
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {scalar_t__ channel; int host; } ;
struct myrs_hba {TYPE_1__* ctlr_info; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ physchan_present; } ;


 struct myrs_hba* shost_priv (int ) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static int
myrs_is_raid(struct device *dev)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 struct myrs_hba *cs = shost_priv(sdev->host);

 return (sdev->channel >= cs->ctlr_info->physchan_present) ? 1 : 0;
}

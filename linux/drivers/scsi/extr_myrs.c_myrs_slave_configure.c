
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_device {scalar_t__ channel; scalar_t__ type; int no_uld_attach; scalar_t__ lun; int wce_default_on; int tagged_supported; struct myrs_ldev_info* hostdata; TYPE_3__* host; } ;
struct TYPE_5__ {scalar_t__ wce; } ;
struct myrs_ldev_info {TYPE_2__ ldev_control; } ;
struct myrs_hba {TYPE_1__* ctlr_info; } ;
struct TYPE_6__ {scalar_t__ max_channel; } ;
struct TYPE_4__ {scalar_t__ physchan_present; } ;


 int ENXIO ;
 scalar_t__ MYRS_INTELLIGENT_WRITECACHE_ENABLED ;
 scalar_t__ MYRS_WRITECACHE_ENABLED ;
 scalar_t__ TYPE_RAID ;
 struct myrs_hba* shost_priv (TYPE_3__*) ;

__attribute__((used)) static int myrs_slave_configure(struct scsi_device *sdev)
{
 struct myrs_hba *cs = shost_priv(sdev->host);
 struct myrs_ldev_info *ldev_info;

 if (sdev->channel > sdev->host->max_channel)
  return -ENXIO;

 if (sdev->channel < cs->ctlr_info->physchan_present) {

  if (sdev->type == TYPE_RAID)
   return -ENXIO;
  sdev->no_uld_attach = 1;
  return 0;
 }
 if (sdev->lun != 0)
  return -ENXIO;

 ldev_info = sdev->hostdata;
 if (!ldev_info)
  return -ENXIO;
 if (ldev_info->ldev_control.wce == MYRS_WRITECACHE_ENABLED ||
     ldev_info->ldev_control.wce == MYRS_INTELLIGENT_WRITECACHE_ENABLED)
  sdev->wce_default_on = 1;
 sdev->tagged_supported = 1;
 return 0;
}

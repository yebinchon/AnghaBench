
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct csio_scsi_level_data {int level; int lnode; int rnode; int oslun; } ;
struct csio_ioreq {int lnode; int rnode; } ;
struct TYPE_2__ {int lun; } ;






 struct scsi_cmnd* csio_scsi_cmnd (struct csio_ioreq*) ;

__attribute__((used)) static bool
csio_scsi_match_io(struct csio_ioreq *ioreq, struct csio_scsi_level_data *sld)
{
 struct scsi_cmnd *scmnd = csio_scsi_cmnd(ioreq);

 switch (sld->level) {
 case 129:
  if (scmnd == ((void*)0))
   return 0;

  return ((ioreq->lnode == sld->lnode) &&
   (ioreq->rnode == sld->rnode) &&
   ((uint64_t)scmnd->device->lun == sld->oslun));

 case 128:
  return ((ioreq->lnode == sld->lnode) &&
    (ioreq->rnode == sld->rnode));
 case 130:
  return (ioreq->lnode == sld->lnode);
 case 131:
  return 1;
 default:
  return 0;
 }
}

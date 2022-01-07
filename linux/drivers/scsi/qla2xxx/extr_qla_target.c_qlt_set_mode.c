
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_qla_host {int qlini_mode; TYPE_1__* host; } ;
struct TYPE_2__ {int active_mode; } ;


 int MODE_DUAL ;
 int MODE_INITIATOR ;
 int MODE_TARGET ;





void qlt_set_mode(struct scsi_qla_host *vha)
{
 switch (vha->qlini_mode) {
 case 131:
 case 128:
  vha->host->active_mode = MODE_TARGET;
  break;
 case 129:
  vha->host->active_mode = MODE_INITIATOR;
  break;
 case 130:
  vha->host->active_mode = MODE_DUAL;
  break;
 default:
  break;
 }
}

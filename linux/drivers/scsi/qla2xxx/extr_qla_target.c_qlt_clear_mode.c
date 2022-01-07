
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_qla_host {int qlini_mode; TYPE_1__* host; } ;
struct TYPE_2__ {void* active_mode; } ;


 void* MODE_INITIATOR ;
 void* MODE_UNKNOWN ;





__attribute__((used)) static void qlt_clear_mode(struct scsi_qla_host *vha)
{
 switch (vha->qlini_mode) {
 case 131:
  vha->host->active_mode = MODE_UNKNOWN;
  break;
 case 128:
  vha->host->active_mode = MODE_INITIATOR;
  break;
 case 129:
 case 130:
  vha->host->active_mode = MODE_INITIATOR;
  break;
 default:
  break;
 }
}

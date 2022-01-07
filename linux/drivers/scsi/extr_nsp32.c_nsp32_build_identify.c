
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct TYPE_6__ {int msgout_len; int * msgoutbuf; } ;
typedef TYPE_3__ nsp32_hw_data ;
struct TYPE_5__ {int lun; TYPE_1__* host; } ;
struct TYPE_4__ {scalar_t__ hostdata; } ;


 int FALSE ;
 int IDENTIFY (int,int ) ;
 scalar_t__ disc_priv ;

__attribute__((used)) static void nsp32_build_identify(struct scsi_cmnd *SCpnt)
{
 nsp32_hw_data *data = (nsp32_hw_data *)SCpnt->device->host->hostdata;
 int pos = data->msgout_len;
 int mode = FALSE;


 if (disc_priv == 0) {

 }

 data->msgoutbuf[pos] = IDENTIFY(mode, SCpnt->device->lun); pos++;

 data->msgout_len = pos;
}

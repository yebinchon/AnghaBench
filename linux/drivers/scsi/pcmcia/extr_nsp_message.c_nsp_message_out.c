
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct TYPE_6__ {int MsgLen; } ;
typedef TYPE_3__ nsp_hw_data ;
struct TYPE_5__ {TYPE_1__* host; } ;
struct TYPE_4__ {scalar_t__ hostdata; } ;


 int BUSMON_REQ ;
 int BUSPHASE_MESSAGE_OUT ;
 int KERN_DEBUG ;
 int NSP_DEBUG_MSGOUTOCCUR ;
 int nsp_dbg (int ,char*) ;
 int nsp_expect_signal (struct scsi_cmnd*,int ,int ) ;
 int nsp_msg (int ,char*) ;
 scalar_t__ nsp_xfer (struct scsi_cmnd*,int ) ;

__attribute__((used)) static void nsp_message_out(struct scsi_cmnd *SCpnt)
{
 nsp_hw_data *data = (nsp_hw_data *)SCpnt->device->host->hostdata;
 int ret = 1;
 int len = data->MsgLen;
 nsp_dbg(NSP_DEBUG_MSGOUTOCCUR, "msgout loop");
 do {
  if (nsp_xfer(SCpnt, BUSPHASE_MESSAGE_OUT)) {
   nsp_msg(KERN_DEBUG, "msgout: xfer short");
  }


  ret = nsp_expect_signal(SCpnt, BUSPHASE_MESSAGE_OUT, BUSMON_REQ);
 } while (ret > 0 && len-- > 0);

}

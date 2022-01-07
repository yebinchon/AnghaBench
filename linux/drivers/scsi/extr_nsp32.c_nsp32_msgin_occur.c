
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
typedef int nsp32_sgtable ;
struct TYPE_13__ {unsigned char* msginbuf; int msgin_len; scalar_t__ msgout_len; TYPE_3__* cur_lunt; TYPE_7__* cur_target; } ;
typedef TYPE_4__ nsp32_hw_data ;
struct TYPE_14__ {int sync_flag; } ;
struct TYPE_12__ {int msgin03; int cur_entry; int sglun_paddr; } ;
struct TYPE_11__ {TYPE_1__* host; } ;
struct TYPE_10__ {unsigned int io_port; scalar_t__ hostdata; } ;


 unsigned short AUTO_ATN ;
 unsigned short AUTO_MSGIN_00_OR_04 ;
 unsigned short AUTO_MSGIN_02 ;
 unsigned short AUTO_MSGIN_03 ;
 long CLRCOUNTER_ALLMASK ;
 int CLR_COUNTER ;

 unsigned short DATA_IN_PHASE ;
 unsigned short DATA_OUT_PHASE ;





 int EXTENDED_SDTR_LEN ;

 void* FALSE ;

 unsigned long IRQSTATUS_RESELECT_OCCUER ;
 int KERN_WARNING ;



 unsigned short MSGIN_02_VALID ;
 int NEGATE ;
 int NSP32_DEBUG_MSGINOCCUR ;

 int SAVED_SACK_CNT ;

 int SCSI_DATA_IN ;
 int SCSI_MSG_OUT ;
 int SDTR_DONE ;
 int SDTR_INITIATOR ;
 int SDTR_TARGET ;
 int SGT_ADR ;

 int TRUE ;
 int nsp32_adjust_busfree (struct scsi_cmnd*,unsigned int) ;
 int nsp32_analyze_sdtr (struct scsi_cmnd*) ;
 int nsp32_build_reject (struct scsi_cmnd*) ;
 int nsp32_dbg (int ,char*,...) ;
 int nsp32_msg (int ,char*,...) ;
 unsigned char nsp32_read1 (unsigned int,int ) ;
 unsigned int nsp32_read4 (unsigned int,int ) ;
 int nsp32_reselection (struct scsi_cmnd*,unsigned char) ;
 int nsp32_restart_autoscsi (struct scsi_cmnd*,unsigned short) ;
 int nsp32_sack_assert (TYPE_4__*) ;
 int nsp32_sack_negate (TYPE_4__*) ;
 int nsp32_set_async (TYPE_4__*,TYPE_7__*) ;
 int nsp32_wait_req (TYPE_4__*,int ) ;
 int nsp32_write4 (unsigned int,int ,long) ;

__attribute__((used)) static void nsp32_msgin_occur(struct scsi_cmnd *SCpnt,
         unsigned long irq_status,
         unsigned short execph)
{
 nsp32_hw_data *data = (nsp32_hw_data *)SCpnt->device->host->hostdata;
 unsigned int base = SCpnt->device->host->io_port;
 unsigned char msg;
 unsigned char msgtype;
 unsigned char newlun;
 unsigned short command = 0;
 int msgclear = TRUE;
 long new_sgtp;
 int ret;






 msg = nsp32_read1(base, SCSI_DATA_IN);
 data->msginbuf[(unsigned char)data->msgin_len] = msg;
 msgtype = data->msginbuf[0];
 nsp32_dbg(NSP32_DEBUG_MSGINOCCUR,
    "enter: msglen: 0x%x msgin: 0x%x msgtype: 0x%x",
    data->msgin_len, msg, msgtype);
 nsp32_sack_assert(data);




 if (msgtype & 0x80) {
  if (!(irq_status & IRQSTATUS_RESELECT_OCCUER)) {

   goto reject;
  }

  newlun = msgtype & 0x1f;
  ret = nsp32_reselection(SCpnt, newlun);
  if (ret == TRUE) {
   goto restart;
  } else {
   goto reject;
  }
 }






 switch (msgtype) {



 case 141:
 case 140:




  nsp32_msg(KERN_WARNING,
      "unexpected message of AutoSCSI MsgIn: 0x%x", msg);
  break;

 case 130:




  if ((execph & DATA_IN_PHASE) || (execph & DATA_OUT_PHASE)) {
   unsigned int s_sacklen;

   s_sacklen = nsp32_read4(base, SAVED_SACK_CNT);
   if ((execph & MSGIN_02_VALID) && (s_sacklen > 0)) {
    nsp32_adjust_busfree(SCpnt, s_sacklen);
   } else {

   }
  }
  data->cur_lunt->msgin03 = FALSE;




  nsp32_write4(base, CLR_COUNTER, CLRCOUNTER_ALLMASK);




  new_sgtp = data->cur_lunt->sglun_paddr +
   (data->cur_lunt->cur_entry * sizeof(nsp32_sgtable));
  nsp32_write4(base, SGT_ADR, new_sgtp);

  break;

 case 129:




  nsp32_msg (KERN_WARNING,
      "unexpected message of AutoSCSI MsgIn: SAVE_POINTERS");

  break;

 case 131:


  if (data->cur_target->sync_flag &
    (SDTR_INITIATOR | SDTR_TARGET)) {





   nsp32_set_async(data, data->cur_target);
   data->cur_target->sync_flag &= ~SDTR_INITIATOR;
   data->cur_target->sync_flag |= SDTR_DONE;

  }
  break;

 case 133:
 case 132:

  nsp32_msg (KERN_WARNING,
      "unsupported message: 0x%x", msgtype);
  break;

 case 134:



  goto reject;




 case 128:
 case 0x23:




  if (data->msgin_len >= 1) {
   goto reject;
  }


  msgclear = FALSE;

  break;




 case 138:
  if (data->msgin_len < 1) {




   msgclear = FALSE;
   break;
  }

  if ((data->msginbuf[1] + 1) > data->msgin_len) {






   msgclear = FALSE;
   break;
  }





  switch (data->msginbuf[2]) {
  case 137:

   goto reject;
   break;

  case 136:



   if (data->msgin_len != EXTENDED_SDTR_LEN + 1) {



    goto reject;
    break;
   }

   nsp32_analyze_sdtr(SCpnt);

   break;

  case 139:

   goto reject;

   break;

  case 135:
   goto reject;

   break;

  default:
   goto reject;
  }
  break;

 default:
  goto reject;
 }

 restart:
 if (msgclear == TRUE) {
  data->msgin_len = 0;
  if (data->msgout_len > 0) {
   nsp32_write4(base, SCSI_MSG_OUT, 0);
   command |= AUTO_ATN;
  }





  command |= (AUTO_MSGIN_00_OR_04 | AUTO_MSGIN_02);




  if (data->cur_lunt->msgin03 == TRUE) {
   command |= AUTO_MSGIN_03;
  }
  data->cur_lunt->msgin03 = FALSE;
 } else {
  data->msgin_len++;
 }




 nsp32_restart_autoscsi(SCpnt, command);




 nsp32_wait_req(data, NEGATE);




 nsp32_sack_negate(data);

 nsp32_dbg(NSP32_DEBUG_MSGINOCCUR, "exit");

 return;

 reject:
 nsp32_msg(KERN_WARNING,
    "invalid or unsupported MessageIn, rejected. "
    "current msg: 0x%x (len: 0x%x), processing msg: 0x%x",
    msg, data->msgin_len, msgtype);
 nsp32_build_reject(SCpnt);
 data->msgin_len = 0;

 goto restart;
}

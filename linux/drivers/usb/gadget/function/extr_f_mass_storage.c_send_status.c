
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct fsg_lun {scalar_t__ sense_data; scalar_t__ sense_data_info; } ;
struct fsg_common {struct fsg_buffhd* next_buffhd_to_fill; int residue; int tag; scalar_t__ phase_error; scalar_t__ bad_lun_okay; struct fsg_lun* curlun; } ;
struct fsg_buffhd {struct fsg_buffhd* next; TYPE_1__* inreq; scalar_t__ buf; } ;
struct bulk_cs_wrap {int Status; void* Residue; int Tag; void* Signature; } ;
struct TYPE_2__ {scalar_t__ zero; int length; } ;


 int ASC (scalar_t__) ;
 int ASCQ (scalar_t__) ;
 int DBG (struct fsg_common*,char*) ;
 int SK (scalar_t__) ;
 scalar_t__ SS_INVALID_COMMAND ;
 scalar_t__ SS_LOGICAL_UNIT_NOT_SUPPORTED ;
 scalar_t__ SS_NO_SENSE ;
 int US_BULK_CS_SIGN ;
 int US_BULK_CS_WRAP_LEN ;
 int US_BULK_STAT_FAIL ;
 int US_BULK_STAT_OK ;
 int US_BULK_STAT_PHASE ;
 int VDBG (struct fsg_common*,char*,int ,int ,int ,scalar_t__) ;
 void* cpu_to_le32 (int ) ;
 int sleep_thread (struct fsg_common*,int,struct fsg_buffhd*) ;
 int start_in_transfer (struct fsg_common*,struct fsg_buffhd*) ;

__attribute__((used)) static void send_status(struct fsg_common *common)
{
 struct fsg_lun *curlun = common->curlun;
 struct fsg_buffhd *bh;
 struct bulk_cs_wrap *csw;
 int rc;
 u8 status = US_BULK_STAT_OK;
 u32 sd, sdinfo = 0;


 bh = common->next_buffhd_to_fill;
 rc = sleep_thread(common, 0, bh);
 if (rc)
  return;

 if (curlun) {
  sd = curlun->sense_data;
  sdinfo = curlun->sense_data_info;
 } else if (common->bad_lun_okay)
  sd = SS_NO_SENSE;
 else
  sd = SS_LOGICAL_UNIT_NOT_SUPPORTED;

 if (common->phase_error) {
  DBG(common, "sending phase-error status\n");
  status = US_BULK_STAT_PHASE;
  sd = SS_INVALID_COMMAND;
 } else if (sd != SS_NO_SENSE) {
  DBG(common, "sending command-failure status\n");
  status = US_BULK_STAT_FAIL;
  VDBG(common, "  sense data: SK x%02x, ASC x%02x, ASCQ x%02x;"
    "  info x%x\n",
    SK(sd), ASC(sd), ASCQ(sd), sdinfo);
 }


 csw = (void *)bh->buf;

 csw->Signature = cpu_to_le32(US_BULK_CS_SIGN);
 csw->Tag = common->tag;
 csw->Residue = cpu_to_le32(common->residue);
 csw->Status = status;

 bh->inreq->length = US_BULK_CS_WRAP_LEN;
 bh->inreq->zero = 0;
 if (!start_in_transfer(common, bh))

  return;

 common->next_buffhd_to_fill = bh->next;
 return;
}

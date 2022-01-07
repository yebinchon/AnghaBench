
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {scalar_t__ actual; scalar_t__ status; struct bulk_cb_wrap* buf; } ;
struct fsg_dev {int bulk_out; int atomic_bitflags; struct fsg_common* common; } ;
struct fsg_common {scalar_t__ cmnd_size; scalar_t__ data_size; scalar_t__ lun; int tag; int * curlun; int ** luns; int data_dir; int cmnd; scalar_t__ can_stall; } ;
struct fsg_buffhd {struct usb_request* outreq; } ;
struct bulk_cb_wrap {scalar_t__ Signature; scalar_t__ Lun; int Flags; scalar_t__ Length; scalar_t__ DataTransferLength; int Tag; int CDB; } ;


 scalar_t__ ARRAY_SIZE (int **) ;
 int DATA_DIR_FROM_HOST ;
 int DATA_DIR_NONE ;
 int DATA_DIR_TO_HOST ;
 int DBG (struct fsg_dev*,char*,scalar_t__,int,...) ;
 int EINVAL ;
 int IGNORE_BULK_OUT ;
 scalar_t__ MAX_COMMAND_SIZE ;
 int US_BULK_CB_SIGN ;
 scalar_t__ US_BULK_CB_WRAP_LEN ;
 int US_BULK_FLAG_IN ;
 scalar_t__ cpu_to_le32 (int ) ;
 int fsg_set_halt (struct fsg_dev*,int ) ;
 int halt_bulk_in_endpoint (struct fsg_dev*) ;
 scalar_t__ le32_to_cpu (scalar_t__) ;
 int memcpy (int ,int ,scalar_t__) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wedge_bulk_in_endpoint (struct fsg_dev*) ;

__attribute__((used)) static int received_cbw(struct fsg_dev *fsg, struct fsg_buffhd *bh)
{
 struct usb_request *req = bh->outreq;
 struct bulk_cb_wrap *cbw = req->buf;
 struct fsg_common *common = fsg->common;


 if (req->status || test_bit(IGNORE_BULK_OUT, &fsg->atomic_bitflags))
  return -EINVAL;


 if (req->actual != US_BULK_CB_WRAP_LEN ||
   cbw->Signature != cpu_to_le32(
    US_BULK_CB_SIGN)) {
  DBG(fsg, "invalid CBW: len %u sig 0x%x\n",
    req->actual,
    le32_to_cpu(cbw->Signature));
  wedge_bulk_in_endpoint(fsg);
  set_bit(IGNORE_BULK_OUT, &fsg->atomic_bitflags);
  return -EINVAL;
 }


 if (cbw->Lun >= ARRAY_SIZE(common->luns) ||
     cbw->Flags & ~US_BULK_FLAG_IN || cbw->Length <= 0 ||
     cbw->Length > MAX_COMMAND_SIZE) {
  DBG(fsg, "non-meaningful CBW: lun = %u, flags = 0x%x, "
    "cmdlen %u\n",
    cbw->Lun, cbw->Flags, cbw->Length);





  if (common->can_stall) {
   fsg_set_halt(fsg, fsg->bulk_out);
   halt_bulk_in_endpoint(fsg);
  }
  return -EINVAL;
 }


 common->cmnd_size = cbw->Length;
 memcpy(common->cmnd, cbw->CDB, common->cmnd_size);
 if (cbw->Flags & US_BULK_FLAG_IN)
  common->data_dir = DATA_DIR_TO_HOST;
 else
  common->data_dir = DATA_DIR_FROM_HOST;
 common->data_size = le32_to_cpu(cbw->DataTransferLength);
 if (common->data_size == 0)
  common->data_dir = DATA_DIR_NONE;
 common->lun = cbw->Lun;
 if (common->lun < ARRAY_SIZE(common->luns))
  common->curlun = common->luns[common->lun];
 else
  common->curlun = ((void*)0);
 common->tag = cbw->Tag;
 return 0;
}

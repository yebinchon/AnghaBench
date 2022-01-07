
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct us_data {unsigned int send_bulk_pipe; unsigned int recv_bulk_pipe; int fflags; int * srb; scalar_t__ iobuf; } ;
struct bulk_cs_wrap {unsigned int DataTransferLength; scalar_t__ Status; int Residue; } ;
struct bulk_cb_wrap {unsigned int DataTransferLength; scalar_t__ Status; int Residue; } ;


 unsigned int FDIR_READ ;
 int USB_STOR_TRANSPORT_ERROR ;
 int USB_STOR_TRANSPORT_GOOD ;
 int USB_STOR_XFER_GOOD ;
 int USB_STOR_XFER_SHORT ;
 int USB_STOR_XFER_STALLED ;
 int US_BULK_CB_WRAP_LEN ;
 int US_BULK_CS_WRAP_LEN ;
 scalar_t__ US_BULK_STAT_OK ;
 int US_FL_IGNORE_RESIDUE ;
 unsigned int le32_to_cpu (int ) ;
 int max (int ,int) ;
 unsigned int min (unsigned int,unsigned int) ;
 int scsi_get_resid (int *) ;
 int scsi_set_resid (int *,int ) ;
 int usb_stor_bulk_srb (struct us_data*,unsigned int,int *) ;
 int usb_stor_bulk_transfer_buf (struct us_data*,unsigned int,struct bulk_cs_wrap*,int ,unsigned int*) ;
 int usb_stor_bulk_transfer_sg (struct us_data*,unsigned int,void*,unsigned int,int ,unsigned int*) ;
 int usb_stor_dbg (struct us_data*,char*) ;

__attribute__((used)) static int ene_send_scsi_cmd(struct us_data *us, u8 fDir, void *buf, int use_sg)
{
 struct bulk_cb_wrap *bcb = (struct bulk_cb_wrap *) us->iobuf;
 struct bulk_cs_wrap *bcs = (struct bulk_cs_wrap *) us->iobuf;

 int result;
 unsigned int residue;
 unsigned int cswlen = 0, partial = 0;
 unsigned int transfer_length = bcb->DataTransferLength;



 result = usb_stor_bulk_transfer_buf(us, us->send_bulk_pipe,
         bcb, US_BULK_CB_WRAP_LEN, ((void*)0));
 if (result != USB_STOR_XFER_GOOD) {
  usb_stor_dbg(us, "send cmd to out endpoint fail ---\n");
  return USB_STOR_TRANSPORT_ERROR;
 }

 if (buf) {
  unsigned int pipe = fDir;

  if (fDir == FDIR_READ)
   pipe = us->recv_bulk_pipe;
  else
   pipe = us->send_bulk_pipe;


  if (use_sg) {
   result = usb_stor_bulk_srb(us, pipe, us->srb);
  } else {
   result = usb_stor_bulk_transfer_sg(us, pipe, buf,
      transfer_length, 0, &partial);
  }
  if (result != USB_STOR_XFER_GOOD) {
   usb_stor_dbg(us, "data transfer fail ---\n");
   return USB_STOR_TRANSPORT_ERROR;
  }
 }


 result = usb_stor_bulk_transfer_buf(us, us->recv_bulk_pipe, bcs,
         US_BULK_CS_WRAP_LEN, &cswlen);

 if (result == USB_STOR_XFER_SHORT && cswlen == 0) {
  usb_stor_dbg(us, "Received 0-length CSW; retrying...\n");
  result = usb_stor_bulk_transfer_buf(us, us->recv_bulk_pipe,
         bcs, US_BULK_CS_WRAP_LEN, &cswlen);
 }

 if (result == USB_STOR_XFER_STALLED) {

  usb_stor_dbg(us, "Attempting to get CSW (2nd try)...\n");
  result = usb_stor_bulk_transfer_buf(us, us->recv_bulk_pipe,
      bcs, US_BULK_CS_WRAP_LEN, ((void*)0));
 }

 if (result != USB_STOR_XFER_GOOD)
  return USB_STOR_TRANSPORT_ERROR;


 residue = le32_to_cpu(bcs->Residue);





 if (residue && !(us->fflags & US_FL_IGNORE_RESIDUE)) {
  residue = min(residue, transfer_length);
  if (us->srb != ((void*)0))
   scsi_set_resid(us->srb, max(scsi_get_resid(us->srb),
        (int)residue));
 }

 if (bcs->Status != US_BULK_STAT_OK)
  return USB_STOR_TRANSPORT_ERROR;

 return USB_STOR_TRANSPORT_GOOD;
}

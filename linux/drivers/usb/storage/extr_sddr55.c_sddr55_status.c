
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {unsigned char* iobuf; scalar_t__ extra; } ;
struct sddr55_card_info {unsigned char read_only; scalar_t__ force_read_only; scalar_t__ fatal_error; int * pba_to_lba; int * lba_to_pba; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int USB_STOR_TRANSPORT_ERROR ;
 int USB_STOR_TRANSPORT_FAILED ;
 int USB_STOR_TRANSPORT_GOOD ;
 int USB_STOR_XFER_GOOD ;
 int USB_STOR_XFER_SHORT ;
 int USB_STOR_XFER_STALLED ;
 int kfree (int *) ;
 int memset (unsigned char*,int ,int) ;
 int sddr55_bulk_transport (struct us_data*,int ,unsigned char*,int) ;
 int set_sense_info (int,int,int ) ;
 int usb_stor_dbg (struct us_data*,char*,int) ;

__attribute__((used)) static int sddr55_status(struct us_data *us)
{
 int result;
 unsigned char *command = us->iobuf;
 unsigned char *status = us->iobuf;
 struct sddr55_card_info *info = (struct sddr55_card_info *)us->extra;


 memset(command, 0, 8);
 command[5] = 0xB0;
 command[7] = 0x80;
 result = sddr55_bulk_transport(us,
  DMA_TO_DEVICE, command, 8);

 usb_stor_dbg(us, "Result for send_command in status %d\n", result);

 if (result != USB_STOR_XFER_GOOD) {
  set_sense_info (4, 0, 0);
  return USB_STOR_TRANSPORT_ERROR;
 }

 result = sddr55_bulk_transport(us,
  DMA_FROM_DEVICE, status, 4);


 if (result == USB_STOR_XFER_SHORT || result == USB_STOR_XFER_STALLED) {

  kfree(info->lba_to_pba);
  kfree(info->pba_to_lba);
  info->lba_to_pba = ((void*)0);
  info->pba_to_lba = ((void*)0);

  info->fatal_error = 0;
  info->force_read_only = 0;

  set_sense_info (2, 0x3a, 0);
  return USB_STOR_TRANSPORT_FAILED;
 }

 if (result != USB_STOR_XFER_GOOD) {
  set_sense_info (4, 0, 0);
  return USB_STOR_TRANSPORT_FAILED;
 }


 info->read_only = (status[0] & 0x20);


 result = sddr55_bulk_transport(us,
  DMA_FROM_DEVICE, status, 2);

 if (result != USB_STOR_XFER_GOOD) {
  set_sense_info (4, 0, 0);
 }

 return (result == USB_STOR_XFER_GOOD ?
   USB_STOR_TRANSPORT_GOOD : USB_STOR_TRANSPORT_FAILED);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int status; unsigned int bytes; } ;
struct us_data {TYPE_1__ current_sg; int dflags; int pusb_dev; } ;
struct scatterlist {int dummy; } ;


 int GFP_NOIO ;
 int USB_STOR_XFER_ERROR ;
 int US_FLIDX_ABORTING ;
 int US_FLIDX_SG_ACTIVE ;
 int clear_bit (int ,int *) ;
 int interpret_urb_result (struct us_data*,unsigned int,unsigned int,int,unsigned int) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int usb_sg_cancel (TYPE_1__*) ;
 int usb_sg_init (TYPE_1__*,int ,unsigned int,int ,struct scatterlist*,int,unsigned int,int ) ;
 int usb_sg_wait (TYPE_1__*) ;
 int usb_stor_dbg (struct us_data*,char*,...) ;

__attribute__((used)) static int usb_stor_bulk_transfer_sglist(struct us_data *us, unsigned int pipe,
  struct scatterlist *sg, int num_sg, unsigned int length,
  unsigned int *act_len)
{
 int result;


 if (test_bit(US_FLIDX_ABORTING, &us->dflags))
  return USB_STOR_XFER_ERROR;


 usb_stor_dbg(us, "xfer %u bytes, %d entries\n", length, num_sg);
 result = usb_sg_init(&us->current_sg, us->pusb_dev, pipe, 0,
   sg, num_sg, length, GFP_NOIO);
 if (result) {
  usb_stor_dbg(us, "usb_sg_init returned %d\n", result);
  return USB_STOR_XFER_ERROR;
 }





 set_bit(US_FLIDX_SG_ACTIVE, &us->dflags);


 if (test_bit(US_FLIDX_ABORTING, &us->dflags)) {


  if (test_and_clear_bit(US_FLIDX_SG_ACTIVE, &us->dflags)) {
   usb_stor_dbg(us, "-- cancelling sg request\n");
   usb_sg_cancel(&us->current_sg);
  }
 }


 usb_sg_wait(&us->current_sg);
 clear_bit(US_FLIDX_SG_ACTIVE, &us->dflags);

 result = us->current_sg.status;
 if (act_len)
  *act_len = us->current_sg.bytes;
 return interpret_urb_result(us, pipe, length, result,
   us->current_sg.bytes);
}

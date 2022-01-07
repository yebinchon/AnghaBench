
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {unsigned char* iobuf; int send_bulk_pipe; } ;


 int EIO ;
 unsigned char LSB_of (int) ;
 unsigned char LUNBITS ;
 unsigned char MSB_of (int) ;
 int USB_STOR_XFER_GOOD ;
 int sddr09_send_scsi_command (struct us_data*,unsigned char*,int) ;
 int usb_stor_bulk_transfer_sg (struct us_data*,int ,unsigned char*,int,int,int *) ;
 int usb_stor_dbg (struct us_data*,char*,int) ;

__attribute__((used)) static int
sddr09_writeX(struct us_data *us,
       unsigned long Waddress, unsigned long Eaddress,
       int nr_of_pages, int bulklen, unsigned char *buf, int use_sg) {

 unsigned char *command = us->iobuf;
 int result;

 command[0] = 0xE9;
 command[1] = LUNBITS;

 command[2] = MSB_of(Waddress>>16);
 command[3] = LSB_of(Waddress>>16);
 command[4] = MSB_of(Waddress & 0xFFFF);
 command[5] = LSB_of(Waddress & 0xFFFF);

 command[6] = MSB_of(Eaddress>>16);
 command[7] = LSB_of(Eaddress>>16);
 command[8] = MSB_of(Eaddress & 0xFFFF);
 command[9] = LSB_of(Eaddress & 0xFFFF);

 command[10] = MSB_of(nr_of_pages);
 command[11] = LSB_of(nr_of_pages);

 result = sddr09_send_scsi_command(us, command, 12);

 if (result) {
  usb_stor_dbg(us, "Result for send_control in sddr09_writeX %d\n",
        result);
  return result;
 }

 result = usb_stor_bulk_transfer_sg(us, us->send_bulk_pipe,
           buf, bulklen, use_sg, ((void*)0));

 if (result != USB_STOR_XFER_GOOD) {
  usb_stor_dbg(us, "Result for bulk_transfer in sddr09_writeX %d\n",
        result);
  return -EIO;
 }
 return 0;
}

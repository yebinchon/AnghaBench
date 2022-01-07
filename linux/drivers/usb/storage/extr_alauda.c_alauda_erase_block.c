
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct us_data {int recv_bulk_pipe; int send_bulk_pipe; } ;


 int ALAUDA_BULK_CMD ;
 int ALAUDA_BULK_ERASE_BLOCK ;
 int MEDIA_PORT (struct us_data*) ;
 int PBA_HI (int ) ;
 int PBA_LO (int ) ;
 int PBA_ZONE (int ) ;
 int USB_STOR_XFER_GOOD ;
 int usb_stor_bulk_transfer_buf (struct us_data*,int ,unsigned char*,int,int *) ;
 int usb_stor_dbg (struct us_data*,char*,unsigned char,...) ;

__attribute__((used)) static int alauda_erase_block(struct us_data *us, u16 pba)
{
 int rc;
 unsigned char command[] = {
  ALAUDA_BULK_CMD, ALAUDA_BULK_ERASE_BLOCK, PBA_HI(pba),
  PBA_ZONE(pba), 0, PBA_LO(pba), 0x02, 0, MEDIA_PORT(us)
 };
 unsigned char buf[2];

 usb_stor_dbg(us, "Erasing PBA %d\n", pba);

 rc = usb_stor_bulk_transfer_buf(us, us->send_bulk_pipe,
  command, 9, ((void*)0));
 if (rc != USB_STOR_XFER_GOOD)
  return rc;

 rc = usb_stor_bulk_transfer_buf(us, us->recv_bulk_pipe,
  buf, 2, ((void*)0));
 if (rc != USB_STOR_XFER_GOOD)
  return rc;

 usb_stor_dbg(us, "Erase result: %02X %02X\n", buf[0], buf[1]);
 return rc;
}

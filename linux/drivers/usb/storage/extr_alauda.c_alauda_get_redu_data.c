
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct us_data {int recv_bulk_pipe; int send_bulk_pipe; } ;


 unsigned char ALAUDA_BULK_CMD ;
 unsigned char ALAUDA_BULK_GET_REDU_DATA ;
 unsigned char MEDIA_PORT (struct us_data*) ;
 unsigned char PBA_HI (int ) ;
 unsigned char PBA_LO (int ) ;
 unsigned char PBA_ZONE (int ) ;
 int USB_STOR_XFER_GOOD ;
 int usb_stor_bulk_transfer_buf (struct us_data*,int ,unsigned char*,int,int *) ;

__attribute__((used)) static int alauda_get_redu_data(struct us_data *us, u16 pba, unsigned char *data)
{
 int rc;
 unsigned char command[] = {
  ALAUDA_BULK_CMD, ALAUDA_BULK_GET_REDU_DATA,
  PBA_HI(pba), PBA_ZONE(pba), 0, PBA_LO(pba), 0, 0, MEDIA_PORT(us)
 };

 rc = usb_stor_bulk_transfer_buf(us, us->send_bulk_pipe,
  command, 9, ((void*)0));
 if (rc != USB_STOR_XFER_GOOD)
  return rc;

 return usb_stor_bulk_transfer_buf(us, us->recv_bulk_pipe,
  data, 16, ((void*)0));
}

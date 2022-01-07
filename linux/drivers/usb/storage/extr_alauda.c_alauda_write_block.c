
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct us_data {int send_bulk_pipe; scalar_t__ extra; } ;
struct alauda_info {int wr_ep; } ;
struct TYPE_2__ {int pagesize; int blocksize; } ;


 int ALAUDA_BULK_CMD ;
 int ALAUDA_BULK_WRITE_BLOCK ;
 TYPE_1__ MEDIA_INFO (struct us_data*) ;
 int MEDIA_PORT (struct us_data*) ;
 int PBA_HI (int ) ;
 int PBA_LO (int ) ;
 int PBA_ZONE (int ) ;
 int USB_STOR_XFER_GOOD ;
 int alauda_check_status2 (struct us_data*) ;
 int usb_stor_bulk_transfer_buf (struct us_data*,int ,unsigned char*,int,int *) ;
 int usb_stor_dbg (struct us_data*,char*,int ) ;

__attribute__((used)) static int alauda_write_block(struct us_data *us, u16 pba, unsigned char *data)
{
 int rc;
 struct alauda_info *info = (struct alauda_info *) us->extra;
 unsigned char command[] = {
  ALAUDA_BULK_CMD, ALAUDA_BULK_WRITE_BLOCK, PBA_HI(pba),
  PBA_ZONE(pba), 0, PBA_LO(pba), 32, 0, MEDIA_PORT(us)
 };

 usb_stor_dbg(us, "pba %d\n", pba);

 rc = usb_stor_bulk_transfer_buf(us, us->send_bulk_pipe,
  command, 9, ((void*)0));
 if (rc != USB_STOR_XFER_GOOD)
  return rc;

 rc = usb_stor_bulk_transfer_buf(us, info->wr_ep, data,
  (MEDIA_INFO(us).pagesize + 64) * MEDIA_INFO(us).blocksize,
  ((void*)0));
 if (rc != USB_STOR_XFER_GOOD)
  return rc;

 return alauda_check_status2(us);
}

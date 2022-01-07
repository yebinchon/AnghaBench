
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {scalar_t__ extra; } ;
struct scsi_cmnd {int dummy; } ;
struct ene_ub6250_info {int SrbStatus; } ;
typedef int buf ;


 int USB_STOR_TRANSPORT_GOOD ;
 int memset (unsigned char*,int ,int) ;
 int usb_stor_set_xfer_buf (unsigned char*,int,struct scsi_cmnd*) ;

__attribute__((used)) static int do_scsi_request_sense(struct us_data *us, struct scsi_cmnd *srb)
{
 struct ene_ub6250_info *info = (struct ene_ub6250_info *) us->extra;
 unsigned char buf[18];

 memset(buf, 0, 18);
 buf[0] = 0x70;
 buf[2] = info->SrbStatus >> 16;
 buf[7] = 10;
 buf[12] = info->SrbStatus >> 8;
 buf[13] = info->SrbStatus;

 usb_stor_set_xfer_buf(buf, sizeof(buf), srb);
 return USB_STOR_TRANSPORT_GOOD;
}

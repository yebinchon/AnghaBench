
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct us_data {int srb; TYPE_3__* unusual_dev; TYPE_2__* pusb_dev; } ;
typedef unsigned char bcdDevice ;
struct TYPE_6__ {int productName; int vendorName; } ;
struct TYPE_4__ {int bcdDevice; } ;
struct TYPE_5__ {TYPE_1__ descriptor; } ;


 int le16_to_cpu (int ) ;
 int memcpy (unsigned char*,int ,int ) ;
 int memset (unsigned char*,char,int) ;
 int min (int,int) ;
 int strlen (int ) ;
 int usb_stor_set_xfer_buf (unsigned char*,unsigned int,int ) ;

void fill_inquiry_response(struct us_data *us, unsigned char *data,
  unsigned int data_len)
{
 if (data_len < 36)
  return;

 memset(data+8, ' ', 28);
 if (data[0]&0x20) {
 } else {
  u16 bcdDevice = le16_to_cpu(us->pusb_dev->descriptor.bcdDevice);
  int n;

  n = strlen(us->unusual_dev->vendorName);
  memcpy(data+8, us->unusual_dev->vendorName, min(8, n));
  n = strlen(us->unusual_dev->productName);
  memcpy(data+16, us->unusual_dev->productName, min(16, n));

  data[32] = 0x30 + ((bcdDevice>>12) & 0x0F);
  data[33] = 0x30 + ((bcdDevice>>8) & 0x0F);
  data[34] = 0x30 + ((bcdDevice>>4) & 0x0F);
  data[35] = 0x30 + ((bcdDevice) & 0x0F);
 }

 usb_stor_set_xfer_buf(data, data_len, us->srb);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct us_data {scalar_t__ extra; } ;
struct TYPE_4__ {int Ready; } ;
struct TYPE_3__ {int Ready; } ;
struct ene_ub6250_info {int* bbuf; TYPE_2__ MS_Status; TYPE_1__ SD_Status; } ;


 int REG_CARD_STATUS ;
 int USB_STOR_TRANSPORT_ERROR ;
 int USB_STOR_XFER_GOOD ;
 int ene_get_card_type (struct us_data*,int ,int*) ;
 int ene_ms_init (struct us_data*) ;
 int ene_sd_init (struct us_data*) ;

__attribute__((used)) static int ene_init(struct us_data *us)
{
 int result;
 u8 misc_reg03;
 struct ene_ub6250_info *info = (struct ene_ub6250_info *)(us->extra);
 u8 *bbuf = info->bbuf;

 result = ene_get_card_type(us, REG_CARD_STATUS, bbuf);
 if (result != USB_STOR_XFER_GOOD)
  return USB_STOR_TRANSPORT_ERROR;

 misc_reg03 = bbuf[0];
 if (misc_reg03 & 0x01) {
  if (!info->SD_Status.Ready) {
   result = ene_sd_init(us);
   if (result != USB_STOR_XFER_GOOD)
    return USB_STOR_TRANSPORT_ERROR;
  }
 }
 if (misc_reg03 & 0x02) {
  if (!info->MS_Status.Ready) {
   result = ene_ms_init(us);
   if (result != USB_STOR_XFER_GOOD)
    return USB_STOR_TRANSPORT_ERROR;
  }
 }
 return result;
}

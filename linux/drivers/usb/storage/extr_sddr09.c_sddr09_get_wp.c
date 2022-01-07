
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int dummy; } ;
struct sddr09_card_info {int flags; } ;


 unsigned char LUNBITS ;
 int SDDR09_WP ;
 int sddr09_read_status (struct us_data*,unsigned char*) ;
 int usb_stor_dbg (struct us_data*,char*,...) ;

__attribute__((used)) static int
sddr09_get_wp(struct us_data *us, struct sddr09_card_info *info) {
 int result;
 unsigned char status;
 const char *wp_fmt;

 result = sddr09_read_status(us, &status);
 if (result) {
  usb_stor_dbg(us, "read_status fails\n");
  return result;
 }
 if ((status & 0x80) == 0) {
  info->flags |= SDDR09_WP;
  wp_fmt = " WP";
 } else {
  wp_fmt = "";
 }
 usb_stor_dbg(us, "status 0x%02X%s%s%s%s\n", status, wp_fmt,
       status & 0x40 ? " Ready" : "",
       status & LUNBITS ? " Suspended" : "",
       status & 0x01 ? " Error" : "");

 return 0;
}

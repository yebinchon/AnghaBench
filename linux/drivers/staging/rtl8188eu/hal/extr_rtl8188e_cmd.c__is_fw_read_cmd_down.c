
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int BIT (int) ;
 int REG_HMETFR ;
 int usb_read8 (struct adapter*,int ) ;

__attribute__((used)) static u8 _is_fw_read_cmd_down(struct adapter *adapt, u8 msgbox_num)
{
 u8 read_down = 0;
 int retry_cnts = 100;

 u8 valid;

 do {
  valid = usb_read8(adapt, REG_HMETFR) & BIT(msgbox_num);
  if (valid == 0)
   read_down = 1;
 } while ((!read_down) && (retry_cnts--));

 return read_down;
}

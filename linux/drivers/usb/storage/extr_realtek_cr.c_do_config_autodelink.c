
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct us_data {int dummy; } ;


 int EIO ;
 int __do_config_autodelink (struct us_data*,int*,int) ;
 int rts51x_read_mem (struct us_data*,int,int*,int) ;
 int usb_stor_dbg (struct us_data*,char*,int) ;

__attribute__((used)) static int do_config_autodelink(struct us_data *us, int enable, int force)
{
 int retval;
 u8 value;

 retval = rts51x_read_mem(us, 0xFE47, &value, 1);
 if (retval < 0)
  return -EIO;

 if (enable) {
  if (force)
   value |= 0x03;
  else
   value |= 0x01;
 } else {
  value &= ~0x03;
 }

 usb_stor_dbg(us, "set 0xfe47 to 0x%x\n", value);


 retval = __do_config_autodelink(us, &value, 1);
 if (retval < 0)
  return -EIO;

 return 0;
}

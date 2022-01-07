
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct twl_rtc {int * reg_map; } ;


 int TWL_MODULE_RTC ;
 int pr_err (char*,size_t,int) ;
 int twl_i2c_read_u8 (int ,size_t*,int ) ;

__attribute__((used)) static int twl_rtc_read_u8(struct twl_rtc *twl_rtc, u8 *data, u8 reg)
{
 int ret;

 ret = twl_i2c_read_u8(TWL_MODULE_RTC, data, (twl_rtc->reg_map[reg]));
 if (ret < 0)
  pr_err("Could not read TWL register %X - error %d\n", reg, ret);
 return ret;
}

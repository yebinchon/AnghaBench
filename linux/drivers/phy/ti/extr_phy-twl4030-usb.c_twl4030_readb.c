
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl4030_usb {int dev; } ;


 int dev_dbg (int ,char*,int,int,int) ;
 int twl_i2c_read_u8 (int,int*,int) ;

__attribute__((used)) static inline int twl4030_readb(struct twl4030_usb *twl, u8 module, u8 address)
{
 u8 data;
 int ret = 0;

 ret = twl_i2c_read_u8(module, &data, address);
 if (ret >= 0)
  ret = data;
 else
  dev_dbg(twl->dev,
   "TWL4030:readb[0x%x,0x%x] Error %d\n",
     module, address, ret);

 return ret;
}

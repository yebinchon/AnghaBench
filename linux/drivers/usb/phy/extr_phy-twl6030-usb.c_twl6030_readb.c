
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl6030_usb {int dev; } ;


 int dev_err (int ,char*,int,int,int) ;
 int twl_i2c_read_u8 (int,int*,int) ;

__attribute__((used)) static inline u8 twl6030_readb(struct twl6030_usb *twl, u8 module, u8 address)
{
 u8 data;
 int ret;

 ret = twl_i2c_read_u8(module, &data, address);
 if (ret >= 0)
  ret = data;
 else
  dev_err(twl->dev,
   "readb[0x%x,0x%x] Error %d\n",
     module, address, ret);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ TiMode; } ;
struct edgeport_serial {int TI_I2C_Type; TYPE_1__ product_info; } ;
typedef int __u8 ;


 int EINVAL ;
 scalar_t__ TI_MODE_BOOT ;
 scalar_t__ TI_MODE_DOWNLOAD ;
 int write_boot_mem (struct edgeport_serial*,int,int,int *) ;
 int write_i2c_mem (struct edgeport_serial*,int,int,int ,int *) ;

__attribute__((used)) static int write_rom(struct edgeport_serial *serial, int start_address,
      int length, __u8 *buffer)
{
 if (serial->product_info.TiMode == TI_MODE_BOOT)
  return write_boot_mem(serial, start_address, length,
        buffer);

 if (serial->product_info.TiMode == TI_MODE_DOWNLOAD)
  return write_i2c_mem(serial, start_address, length,
      serial->TI_I2C_Type, buffer);
 return -EINVAL;
}

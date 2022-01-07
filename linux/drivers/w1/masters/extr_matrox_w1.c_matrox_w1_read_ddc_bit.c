
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct matrox_device {int dummy; } ;


 int MATROX_GET_DATA ;
 int matrox_w1_read_reg (struct matrox_device*,int ) ;

__attribute__((used)) static u8 matrox_w1_read_ddc_bit(void *data)
{
 u8 ret;
 struct matrox_device *dev = data;

 ret = matrox_w1_read_reg(dev, MATROX_GET_DATA);

 return ret;
}

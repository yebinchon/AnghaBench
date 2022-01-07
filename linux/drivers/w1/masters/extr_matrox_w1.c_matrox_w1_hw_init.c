
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matrox_device {int dummy; } ;


 int MATROX_GET_CONTROL ;
 int MATROX_GET_DATA ;
 int matrox_w1_write_reg (struct matrox_device*,int ,int) ;

__attribute__((used)) static void matrox_w1_hw_init(struct matrox_device *dev)
{
 matrox_w1_write_reg(dev, MATROX_GET_DATA, 0xFF);
 matrox_w1_write_reg(dev, MATROX_GET_CONTROL, 0x00);
}

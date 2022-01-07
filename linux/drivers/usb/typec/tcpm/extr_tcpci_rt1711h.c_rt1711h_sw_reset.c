
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt1711h_chip {int dummy; } ;


 int RT1711H_RTCTRL13 ;
 int rt1711h_write8 (struct rt1711h_chip*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int rt1711h_sw_reset(struct rt1711h_chip *chip)
{
 int ret;

 ret = rt1711h_write8(chip, RT1711H_RTCTRL13, 0x01);
 if (ret < 0)
  return ret;

 usleep_range(1000, 2000);
 return 0;
}

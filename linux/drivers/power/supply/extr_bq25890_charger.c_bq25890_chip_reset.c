
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq25890_device {int dummy; } ;


 int ETIMEDOUT ;
 int F_REG_RST ;
 int bq25890_field_read (struct bq25890_device*,int ) ;
 int bq25890_field_write (struct bq25890_device*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int bq25890_chip_reset(struct bq25890_device *bq)
{
 int ret;
 int rst_check_counter = 10;

 ret = bq25890_field_write(bq, F_REG_RST, 1);
 if (ret < 0)
  return ret;

 do {
  ret = bq25890_field_read(bq, F_REG_RST);
  if (ret < 0)
   return ret;

  usleep_range(5, 10);
 } while (ret == 1 && --rst_check_counter);

 if (!rst_check_counter)
  return -ETIMEDOUT;

 return 0;
}

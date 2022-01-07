
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_battery_info {int i2c; } ;


 int PM8607_CCNT ;
 int PM8607_CCNT_MEAS1 ;
 int pm860x_bulk_read (int ,int ,int,unsigned char*) ;
 int pm860x_set_bits (int ,int ,int,int) ;

__attribute__((used)) static int read_ccnt(struct pm860x_battery_info *info, int offset,
       int *ccnt)
{
 unsigned char buf[2];
 int ret;

 ret = pm860x_set_bits(info->i2c, PM8607_CCNT, 7, offset & 7);
 if (ret < 0)
  goto out;
 ret = pm860x_bulk_read(info->i2c, PM8607_CCNT_MEAS1, 2, buf);
 if (ret < 0)
  goto out;
 *ccnt = ((buf[0] & 0xff) << 8) | (buf[1] & 0xff);
 return 0;
out:
 return ret;
}

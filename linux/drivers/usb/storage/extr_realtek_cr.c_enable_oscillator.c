
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct us_data {int dummy; } ;


 int EIO ;
 int rts51x_read_mem (struct us_data*,int,int*,int) ;
 int rts51x_write_mem (struct us_data*,int,int*,int) ;

__attribute__((used)) static int enable_oscillator(struct us_data *us)
{
 int retval;
 u8 value;

 retval = rts51x_read_mem(us, 0xFE77, &value, 1);
 if (retval < 0)
  return -EIO;

 value |= 0x04;
 retval = rts51x_write_mem(us, 0xFE77, &value, 1);
 if (retval < 0)
  return -EIO;

 retval = rts51x_read_mem(us, 0xFE77, &value, 1);
 if (retval < 0)
  return -EIO;

 if (!(value & 0x04))
  return -EIO;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct us_data {scalar_t__ extra; } ;
struct rts51x_chip {int dummy; } ;


 scalar_t__ CHECK_ID (struct rts51x_chip*,int,int) ;
 int CHK_AUTO_DELINK (struct rts51x_chip*) ;
 int CLR_BIT (int,int) ;
 int EIO ;
 int SET_BIT (int,int) ;
 int __do_config_autodelink (struct us_data*,int*,int) ;
 scalar_t__ auto_delink_en ;
 int do_config_autodelink (struct us_data*,int,int ) ;
 int enable_oscillator (struct us_data*) ;
 int rts51x_read_mem (struct us_data*,int,int*,int) ;
 int rts51x_write_mem (struct us_data*,int,int*,int) ;

__attribute__((used)) static int config_autodelink_after_power_on(struct us_data *us)
{
 struct rts51x_chip *chip = (struct rts51x_chip *)(us->extra);
 int retval;
 u8 value;

 if (!CHK_AUTO_DELINK(chip))
  return 0;

 retval = rts51x_read_mem(us, 0xFE47, &value, 1);
 if (retval < 0)
  return -EIO;

 if (auto_delink_en) {
  CLR_BIT(value, 0);
  CLR_BIT(value, 1);
  SET_BIT(value, 2);

  if (CHECK_ID(chip, 0x0138, 0x3882))
   CLR_BIT(value, 2);

  SET_BIT(value, 7);


  retval = __do_config_autodelink(us, &value, 1);
  if (retval < 0)
   return -EIO;

  retval = enable_oscillator(us);
  if (retval == 0)
   (void)do_config_autodelink(us, 1, 0);
 } else {


  SET_BIT(value, 2);

  if (CHECK_ID(chip, 0x0138, 0x3882))
   CLR_BIT(value, 2);

  if (CHECK_ID(chip, 0x0159, 0x5889) ||
      CHECK_ID(chip, 0x0138, 0x3880)) {
   CLR_BIT(value, 0);
   CLR_BIT(value, 7);
  }


  retval = __do_config_autodelink(us, &value, 1);
  if (retval < 0)
   return -EIO;

  if (CHECK_ID(chip, 0x0159, 0x5888)) {
   value = 0xFF;
   retval = rts51x_write_mem(us, 0xFE79, &value, 1);
   if (retval < 0)
    return -EIO;

   value = 0x01;
   retval = rts51x_write_mem(us, 0x48, &value, 1);
   if (retval < 0)
    return -EIO;
  }
 }

 return 0;
}

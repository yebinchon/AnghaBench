
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct w1_slave {int master; } ;


 int EIO ;
 int EOPNOTSUPP ;
 size_t W1_F19_WRITE_DATA_LIMIT ;
 int W1_F19_WRITE_DATA_NO_STOP ;
 int W1_F19_WRITE_DATA_ONLY ;
 int W1_F19_WRITE_DATA_ONLY_WITH_STOP ;
 int W1_F19_WRITE_DATA_WITH_STOP ;
 int __w1_f19_i2c_write (struct w1_slave*,int*,int,int const*,int) ;
 scalar_t__ w1_reset_resume_command (int ) ;

__attribute__((used)) static int w1_f19_i2c_write(struct w1_slave *sl, u16 i2c_address,
 const u8 *buffer, size_t count, bool stop)
{
 int result;
 int remaining = count;
 const u8 *p;
 u8 command[2];


 if (count == 0)
  return -EOPNOTSUPP;


 if (count <= W1_F19_WRITE_DATA_LIMIT) {






  command[0] = (stop ? W1_F19_WRITE_DATA_WITH_STOP
   : W1_F19_WRITE_DATA_NO_STOP);
  command[1] = i2c_address << 1;
  result = __w1_f19_i2c_write(sl, command, 2, buffer, count);
 } else {



  p = buffer;
  command[0] = W1_F19_WRITE_DATA_NO_STOP;
  command[1] = i2c_address << 1;
  result = __w1_f19_i2c_write(sl, command, 2, p,
   W1_F19_WRITE_DATA_LIMIT);
  if (result < 0)
   return result;


  if (w1_reset_resume_command(sl->master))
   return -EIO;


  p += W1_F19_WRITE_DATA_LIMIT;
  remaining -= W1_F19_WRITE_DATA_LIMIT;

  while (remaining > W1_F19_WRITE_DATA_LIMIT) {

   command[0] = W1_F19_WRITE_DATA_ONLY;
   result = __w1_f19_i2c_write(sl, command, 1, p,
     W1_F19_WRITE_DATA_LIMIT);
   if (result < 0)
    return result;


   if (w1_reset_resume_command(sl->master))
    return -EIO;


   p += W1_F19_WRITE_DATA_LIMIT;
   remaining -= W1_F19_WRITE_DATA_LIMIT;
  }


  command[0] = (stop ? W1_F19_WRITE_DATA_ONLY_WITH_STOP
   : W1_F19_WRITE_DATA_ONLY);
  result = __w1_f19_i2c_write(sl, command, 1, p, remaining);
 }

 return result;
}

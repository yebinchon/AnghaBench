
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tps6598x {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int EPERM ;
 int ETIMEDOUT ;
 scalar_t__ INVALID_CMD (int) ;
 int TPS_REG_CMD1 ;
 int TPS_REG_DATA1 ;


 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ time_is_before_jiffies (unsigned long) ;
 int tps6598x_block_read (struct tps6598x*,int ,int*,int) ;
 int tps6598x_block_write (struct tps6598x*,int ,int*,size_t) ;
 int tps6598x_read32 (struct tps6598x*,int ,int*) ;
 int tps6598x_write_4cc (struct tps6598x*,int ,char const*) ;

__attribute__((used)) static int tps6598x_exec_cmd(struct tps6598x *tps, const char *cmd,
        size_t in_len, u8 *in_data,
        size_t out_len, u8 *out_data)
{
 unsigned long timeout;
 u32 val;
 int ret;

 ret = tps6598x_read32(tps, TPS_REG_CMD1, &val);
 if (ret)
  return ret;
 if (val && !INVALID_CMD(val))
  return -EBUSY;

 if (in_len) {
  ret = tps6598x_block_write(tps, TPS_REG_DATA1,
        in_data, in_len);
  if (ret)
   return ret;
 }

 ret = tps6598x_write_4cc(tps, TPS_REG_CMD1, cmd);
 if (ret < 0)
  return ret;


 timeout = jiffies + msecs_to_jiffies(1000);

 do {
  ret = tps6598x_read32(tps, TPS_REG_CMD1, &val);
  if (ret)
   return ret;
  if (INVALID_CMD(val))
   return -EINVAL;

  if (time_is_before_jiffies(timeout))
   return -ETIMEDOUT;
 } while (val);

 if (out_len) {
  ret = tps6598x_block_read(tps, TPS_REG_DATA1,
       out_data, out_len);
  if (ret)
   return ret;
  val = out_data[0];
 } else {
  ret = tps6598x_block_read(tps, TPS_REG_DATA1, &val, sizeof(u8));
  if (ret)
   return ret;
 }

 switch (val) {
 case 128:
  return -ETIMEDOUT;
 case 129:
  return -EPERM;
 default:
  break;
 }

 return 0;
}

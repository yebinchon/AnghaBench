
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7280_state {int ctrl_hb; } ;


 int AD7280A_CELL_VOLTAGE_1 ;
 unsigned int AD7280A_CELL_VOLTAGE_6 ;
 int AD7280A_CONTROL_HB ;
 int AD7280A_CTRL_HB_CONV_INPUT_ALL ;
 int AD7280A_CTRL_HB_CONV_RES_READ_ALL ;
 int AD7280A_CTRL_HB_CONV_START_CS ;
 int AD7280A_DEVADDR_MASTER ;
 int AD7280A_READ ;
 int EIO ;
 int __ad7280_read32 (struct ad7280_state*,unsigned int*) ;
 scalar_t__ ad7280_check_crc (struct ad7280_state*,unsigned int) ;
 int ad7280_delay (struct ad7280_state*) ;
 int ad7280_write (struct ad7280_state*,int ,int ,int,int) ;

__attribute__((used)) static int ad7280_read_all_channels(struct ad7280_state *st, unsigned int cnt,
        unsigned int *array)
{
 int i, ret;
 unsigned int tmp, sum = 0;

 ret = ad7280_write(st, AD7280A_DEVADDR_MASTER, AD7280A_READ, 1,
      AD7280A_CELL_VOLTAGE_1 << 2);
 if (ret)
  return ret;

 ret = ad7280_write(st, AD7280A_DEVADDR_MASTER, AD7280A_CONTROL_HB, 1,
      AD7280A_CTRL_HB_CONV_INPUT_ALL |
      AD7280A_CTRL_HB_CONV_RES_READ_ALL |
      AD7280A_CTRL_HB_CONV_START_CS |
      st->ctrl_hb);
 if (ret)
  return ret;

 ad7280_delay(st);

 for (i = 0; i < cnt; i++) {
  ret = __ad7280_read32(st, &tmp);
  if (ret)
   return ret;

  if (ad7280_check_crc(st, tmp))
   return -EIO;

  if (array)
   array[i] = tmp;

  if (((tmp >> 23) & 0xF) <= AD7280A_CELL_VOLTAGE_6)
   sum += ((tmp >> 11) & 0xFFF);
 }

 return sum;
}

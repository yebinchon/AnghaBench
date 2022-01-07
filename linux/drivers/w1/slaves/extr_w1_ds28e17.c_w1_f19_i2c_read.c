
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct w1_slave {int master; } ;


 int CRC16_INIT ;
 int EOPNOTSUPP ;
 int ETIMEDOUT ;
 int W1_F19_READ_DATA_WITH_STOP ;
 int crc16 (int ,int*,int) ;
 int w1_f19_error (struct w1_slave*,int*) ;
 scalar_t__ w1_f19_i2c_busy_wait (struct w1_slave*,size_t) ;
 int w1_read_8 (int ) ;
 int w1_read_block (int ,int*,size_t) ;
 int w1_write_block (int ,int*,int) ;

__attribute__((used)) static int w1_f19_i2c_read(struct w1_slave *sl, u16 i2c_address,
 u8 *buffer, size_t count)
{
 u16 crc;
 int error;
 u8 w1_buf[5];


 if (count == 0)
  return -EOPNOTSUPP;


 w1_buf[0] = W1_F19_READ_DATA_WITH_STOP;
 w1_buf[1] = i2c_address << 1 | 0x01;
 w1_buf[2] = count;
 crc = crc16(CRC16_INIT, w1_buf, 3);
 w1_buf[3] = ~(crc & 0xFF);
 w1_buf[4] = ~((crc >> 8) & 0xFF);
 w1_write_block(sl->master, w1_buf, 5);


 if (w1_f19_i2c_busy_wait(sl, count + 1) < 0)
  return -ETIMEDOUT;


 w1_buf[0] = w1_read_8(sl->master);
 w1_buf[1] = 0;


 error = w1_f19_error(sl, w1_buf);
 if (error < 0)
  return error;


 return w1_read_block(sl->master, buffer, count);
}

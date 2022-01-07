
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w1_slave {int master; } ;


 int W1_DS2438_COPY_SCRATCH ;
 int W1_DS2438_READ_SCRATCH ;
 int W1_DS2438_RECALL_MEMORY ;
 unsigned int W1_DS2438_RETRIES ;
 int W1_DS2438_WRITE_SCRATCH ;
 int w1_read_8 (int ) ;
 scalar_t__ w1_reset_select_slave (struct w1_slave*) ;
 int w1_write_block (int ,int*,int) ;

__attribute__((used)) static int w1_ds2438_change_config_bit(struct w1_slave *sl, u8 mask, u8 value)
{
 unsigned int retries = W1_DS2438_RETRIES;
 u8 w1_buf[3];
 u8 status;
 int perform_write = 0;

 while (retries--) {
  if (w1_reset_select_slave(sl))
   continue;
  w1_buf[0] = W1_DS2438_RECALL_MEMORY;
  w1_buf[1] = 0x00;
  w1_write_block(sl->master, w1_buf, 2);

  if (w1_reset_select_slave(sl))
   continue;
  w1_buf[0] = W1_DS2438_READ_SCRATCH;
  w1_buf[1] = 0x00;
  w1_write_block(sl->master, w1_buf, 2);


  status = w1_read_8(sl->master);


  if (value)
   value = mask;

  if ((status & mask) == value)
   return 0;
  else {

   status ^= mask;
   perform_write = 1;
  }
  break;
 }

 if (perform_write) {
  retries = W1_DS2438_RETRIES;
  while (retries--) {
   if (w1_reset_select_slave(sl))
    continue;
   w1_buf[0] = W1_DS2438_WRITE_SCRATCH;
   w1_buf[1] = 0x00;
   w1_buf[2] = status;
   w1_write_block(sl->master, w1_buf, 3);

   if (w1_reset_select_slave(sl))
    continue;
   w1_buf[0] = W1_DS2438_COPY_SCRATCH;
   w1_buf[1] = 0x00;
   w1_write_block(sl->master, w1_buf, 2);

   return 0;
  }
 }
 return -1;
}

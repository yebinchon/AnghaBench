
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct w1_slave {TYPE_1__* master; struct w1_eprom_data* family_data; } ;
struct w1_eprom_data {int* eprom; int page_present; } ;
struct TYPE_3__ {int bus_mutex; } ;


 scalar_t__ CRC16_INIT ;
 scalar_t__ CRC16_VALID ;
 int EIO ;
 int W1_EXT_READ_MEMORY ;
 int W1_PAGE_SIZE ;
 scalar_t__ crc16 (scalar_t__,int*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int,int ) ;
 scalar_t__ test_bit (int,int ) ;
 int w1_read_block (TYPE_1__*,int*,int) ;
 scalar_t__ w1_reset_select_slave (struct w1_slave*) ;
 int w1_write_block (TYPE_1__*,int*,int) ;

__attribute__((used)) static int w1_ds2505_read_page(struct w1_slave *sl, int pageno)
{
 struct w1_eprom_data *data = sl->family_data;
 int redir_retries = 16;
 int pgoff, epoff;
 int ret = -EIO;
 u8 buf[6];
 u8 redir;
 u16 crc;

 if (test_bit(pageno, data->page_present))
  return 0;

 epoff = pgoff = pageno * W1_PAGE_SIZE;
 mutex_lock(&sl->master->bus_mutex);

retry:
 if (w1_reset_select_slave(sl))
  goto err;

 buf[0] = W1_EXT_READ_MEMORY;
 buf[1] = pgoff & 0xff;
 buf[2] = pgoff >> 8;
 w1_write_block(sl->master, buf, 3);
 w1_read_block(sl->master, buf + 3, 3);
 redir = buf[3];
 crc = crc16(CRC16_INIT, buf, 6);

 if (crc != CRC16_VALID)
  goto err;


 if (redir != 0xff) {
  redir_retries--;
  if (redir_retries < 0)
   goto err;

  pgoff = (redir ^ 0xff) * W1_PAGE_SIZE;
  goto retry;
 }

 w1_read_block(sl->master, &data->eprom[epoff], W1_PAGE_SIZE);
 w1_read_block(sl->master, buf, 2);
 crc = crc16(CRC16_INIT, &data->eprom[epoff], W1_PAGE_SIZE);
 crc = crc16(crc, buf, 2);

 if (crc != CRC16_VALID)
  goto err;

 set_bit(pageno, data->page_present);
 ret = 0;
err:
 mutex_unlock(&sl->master->bus_mutex);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dev; } ;


 int EMSGSIZE ;
 int FIFO_SIZE ;
 int REG_FIFO ;
 int WRITE_BIT ;
 int dev_dbg (int *,char*,...) ;
 int memcpy (int*,int*,unsigned int) ;
 int spi_write (struct spi_device*,int*,unsigned int) ;

int rf69_write_fifo(struct spi_device *spi, u8 *buffer, unsigned int size)
{



 u8 local_buffer[FIFO_SIZE + 1];

 if (size > FIFO_SIZE) {
  dev_dbg(&spi->dev,
   "read fifo: passed in buffer bigger then internal buffer\n");
  return -EMSGSIZE;
 }

 local_buffer[0] = REG_FIFO | WRITE_BIT;
 memcpy(&local_buffer[1], buffer, size);






 return spi_write(spi, local_buffer, size + 1);
}

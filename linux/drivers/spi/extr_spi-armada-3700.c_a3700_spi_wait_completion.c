
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int master; } ;
struct a3700_spi {unsigned int wait_mask; int done; } ;


 int A3700_SPI_IF_CTRL_REG ;
 int A3700_SPI_INT_MASK_REG ;
 int A3700_SPI_TIMEOUT ;
 unsigned long msecs_to_jiffies (int ) ;
 int reinit_completion (int *) ;
 struct a3700_spi* spi_master_get_devdata (int ) ;
 unsigned int spireg_read (struct a3700_spi*,int ) ;
 int spireg_write (struct a3700_spi*,int ,unsigned int) ;
 unsigned int wait_for_completion_timeout (int *,unsigned long) ;

__attribute__((used)) static bool a3700_spi_wait_completion(struct spi_device *spi)
{
 struct a3700_spi *a3700_spi;
 unsigned int timeout;
 unsigned int ctrl_reg;
 unsigned long timeout_jiffies;

 a3700_spi = spi_master_get_devdata(spi->master);







 ctrl_reg = spireg_read(a3700_spi, A3700_SPI_IF_CTRL_REG);
 if (a3700_spi->wait_mask & ctrl_reg)
  return 1;

 reinit_completion(&a3700_spi->done);

 spireg_write(a3700_spi, A3700_SPI_INT_MASK_REG,
       a3700_spi->wait_mask);

 timeout_jiffies = msecs_to_jiffies(A3700_SPI_TIMEOUT);
 timeout = wait_for_completion_timeout(&a3700_spi->done,
           timeout_jiffies);

 a3700_spi->wait_mask = 0;

 if (timeout)
  return 1;
 ctrl_reg = spireg_read(a3700_spi, A3700_SPI_IF_CTRL_REG);
 if (a3700_spi->wait_mask & ctrl_reg)
  return 1;

 spireg_write(a3700_spi, A3700_SPI_INT_MASK_REG, 0);


 return 0;
}

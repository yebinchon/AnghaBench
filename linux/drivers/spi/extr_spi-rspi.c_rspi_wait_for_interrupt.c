
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rspi_data {int spsr; int wait; } ;


 int ETIMEDOUT ;
 int HZ ;
 int RSPI_SPSR ;
 int rspi_enable_irq (struct rspi_data*,int) ;
 int rspi_read8 (struct rspi_data*,int ) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int rspi_wait_for_interrupt(struct rspi_data *rspi, u8 wait_mask,
       u8 enable_bit)
{
 int ret;

 rspi->spsr = rspi_read8(rspi, RSPI_SPSR);
 if (rspi->spsr & wait_mask)
  return 0;

 rspi_enable_irq(rspi, enable_bit);
 ret = wait_event_timeout(rspi->wait, rspi->spsr & wait_mask, HZ);
 if (ret == 0 && !(rspi->spsr & wait_mask))
  return -ETIMEDOUT;

 return 0;
}

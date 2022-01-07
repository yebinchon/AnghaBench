
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct pl022 {int virtbase; } ;


 int SSP_CR1 (int ) ;
 int SSP_CR1_MASK_SSE ;
 int readw (int ) ;
 struct pl022* spi_master_get_devdata (struct spi_master*) ;
 int writew (int,int ) ;

__attribute__((used)) static int pl022_unprepare_transfer_hardware(struct spi_master *master)
{
 struct pl022 *pl022 = spi_master_get_devdata(master);


 writew((readw(SSP_CR1(pl022->virtbase)) &
  (~SSP_CR1_MASK_SSE)), SSP_CR1(pl022->virtbase));

 return 0;
}

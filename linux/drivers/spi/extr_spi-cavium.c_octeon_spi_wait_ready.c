
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ busy; } ;
union cvmx_mpi_sts {int u64; TYPE_1__ s; } ;
struct octeon_spi {scalar_t__ register_base; } ;


 scalar_t__ OCTEON_SPI_STS (struct octeon_spi*) ;
 int __delay (int) ;
 int readq (scalar_t__) ;

__attribute__((used)) static void octeon_spi_wait_ready(struct octeon_spi *p)
{
 union cvmx_mpi_sts mpi_sts;
 unsigned int loops = 0;

 do {
  if (loops++)
   __delay(500);
  mpi_sts.u64 = readq(p->register_base + OCTEON_SPI_STS(p));
 } while (mpi_sts.s.busy);
}

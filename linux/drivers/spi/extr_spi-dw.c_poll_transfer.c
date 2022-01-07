
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_spi {scalar_t__ rx_end; scalar_t__ rx; } ;


 int cpu_relax () ;
 int dw_reader (struct dw_spi*) ;
 int dw_writer (struct dw_spi*) ;

__attribute__((used)) static int poll_transfer(struct dw_spi *dws)
{
 do {
  dw_writer(dws);
  dw_reader(dws);
  cpu_relax();
 } while (dws->rx_end > dws->rx);

 return 0;
}

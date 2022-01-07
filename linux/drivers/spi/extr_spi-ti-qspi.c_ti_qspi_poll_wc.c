
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_qspi {int dummy; } ;


 int ETIMEDOUT ;
 unsigned long QSPI_COMPLETION_TIMEOUT ;
 int QSPI_SPI_STATUS_REG ;
 int WC ;
 int cpu_relax () ;
 unsigned long jiffies ;
 int ti_qspi_read (struct ti_qspi*,int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static inline int ti_qspi_poll_wc(struct ti_qspi *qspi)
{
 u32 stat;
 unsigned long timeout = jiffies + QSPI_COMPLETION_TIMEOUT;

 do {
  stat = ti_qspi_read(qspi, QSPI_SPI_STATUS_REG);
  if (stat & WC)
   return 0;
  cpu_relax();
 } while (time_after(timeout, jiffies));

 stat = ti_qspi_read(qspi, QSPI_SPI_STATUS_REG);
 if (stat & WC)
  return 0;
 return -ETIMEDOUT;
}

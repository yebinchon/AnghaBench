
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_qspi {int dummy; } ;


 int BUSY ;
 unsigned long QSPI_COMPLETION_TIMEOUT ;
 int QSPI_SPI_STATUS_REG ;
 int WARN (int,char*) ;
 int cpu_relax () ;
 unsigned long jiffies ;
 int ti_qspi_read (struct ti_qspi*,int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static inline u32 qspi_is_busy(struct ti_qspi *qspi)
{
 u32 stat;
 unsigned long timeout = jiffies + QSPI_COMPLETION_TIMEOUT;

 stat = ti_qspi_read(qspi, QSPI_SPI_STATUS_REG);
 while ((stat & BUSY) && time_after(timeout, jiffies)) {
  cpu_relax();
  stat = ti_qspi_read(qspi, QSPI_SPI_STATUS_REG);
 }

 WARN(stat & BUSY, "qspi busy\n");
 return stat & BUSY;
}

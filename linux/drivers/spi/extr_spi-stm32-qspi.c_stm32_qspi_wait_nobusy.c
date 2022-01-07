
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_qspi {scalar_t__ io_base; } ;


 scalar_t__ QSPI_SR ;
 int SR_BUSY ;
 int STM32_BUSY_TIMEOUT_US ;
 int readl_relaxed_poll_timeout_atomic (scalar_t__,int,int,int,int ) ;

__attribute__((used)) static int stm32_qspi_wait_nobusy(struct stm32_qspi *qspi)
{
 u32 sr;

 return readl_relaxed_poll_timeout_atomic(qspi->io_base + QSPI_SR, sr,
       !(sr & SR_BUSY), 1,
       STM32_BUSY_TIMEOUT_US);
}

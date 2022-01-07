
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_qspi {scalar_t__ base; } ;


 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static inline void ti_qspi_write(struct ti_qspi *qspi,
  unsigned long val, unsigned long reg)
{
 writel(val, qspi->base + reg);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_qspi {scalar_t__ base; } ;


 unsigned long readl (scalar_t__) ;

__attribute__((used)) static inline unsigned long ti_qspi_read(struct ti_qspi *qspi,
  unsigned long reg)
{
 return readl(qspi->base + reg);
}

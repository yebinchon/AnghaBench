
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_qspi {scalar_t__* base; int big_endian; } ;
typedef enum base_type { ____Placeholder_base_type } base_type ;


 int bcm_qspi_writel (int ,unsigned int,scalar_t__) ;

__attribute__((used)) static inline void bcm_qspi_write(struct bcm_qspi *qspi, enum base_type type,
      unsigned int offset, unsigned int data)
{
 bcm_qspi_writel(qspi->big_endian, data, qspi->base[type] + offset);
}

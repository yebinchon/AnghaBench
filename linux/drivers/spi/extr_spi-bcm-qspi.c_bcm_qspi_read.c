
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm_qspi {scalar_t__* base; int big_endian; } ;
typedef enum base_type { ____Placeholder_base_type } base_type ;


 int bcm_qspi_readl (int ,scalar_t__) ;

__attribute__((used)) static inline u32 bcm_qspi_read(struct bcm_qspi *qspi, enum base_type type,
    unsigned int offset)
{
 return bcm_qspi_readl(qspi->big_endian, qspi->base[type] + offset);
}

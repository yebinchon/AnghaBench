
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fsl_espi {scalar_t__ reg_base; } ;


 int ioread8 (scalar_t__) ;

__attribute__((used)) static inline u8 fsl_espi_read_reg8(struct fsl_espi *espi, int offset)
{
 return ioread8(espi->reg_base + offset);
}

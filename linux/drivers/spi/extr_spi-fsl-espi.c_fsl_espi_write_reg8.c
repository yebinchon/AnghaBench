
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fsl_espi {scalar_t__ reg_base; } ;


 int iowrite8 (int ,scalar_t__) ;

__attribute__((used)) static inline void fsl_espi_write_reg8(struct fsl_espi *espi, int offset,
           u8 val)
{
 iowrite8(val, espi->reg_base + offset);
}

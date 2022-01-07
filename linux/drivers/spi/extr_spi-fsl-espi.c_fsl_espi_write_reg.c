
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsl_espi {scalar_t__ reg_base; } ;


 int iowrite32be (int ,scalar_t__) ;

__attribute__((used)) static inline void fsl_espi_write_reg(struct fsl_espi *espi, int offset,
          u32 val)
{
 iowrite32be(val, espi->reg_base + offset);
}

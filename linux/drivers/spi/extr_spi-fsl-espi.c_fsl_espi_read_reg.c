
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsl_espi {scalar_t__ reg_base; } ;


 int ioread32be (scalar_t__) ;

__attribute__((used)) static inline u32 fsl_espi_read_reg(struct fsl_espi *espi, int offset)
{
 return ioread32be(espi->reg_base + offset);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fsl_espi {scalar_t__ reg_base; } ;


 int ioread16be (scalar_t__) ;

__attribute__((used)) static inline u16 fsl_espi_read_reg16(struct fsl_espi *espi, int offset)
{
 return ioread16be(espi->reg_base + offset);
}

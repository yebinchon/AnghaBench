
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int dummy; } ;
struct mpc8xxx_spi {int dummy; } ;



__attribute__((used)) static inline int fsl_spi_cpm_bufs(struct mpc8xxx_spi *mspi,
       struct spi_transfer *t,
       bool is_dma_mapped) { return 0; }

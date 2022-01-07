
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_qspi {int bspi_maj_rev; } ;



__attribute__((used)) static inline bool bcm_qspi_bspi_ver_three(struct bcm_qspi *qspi)
{
 if (qspi->bspi_maj_rev < 4)
  return 1;
 return 0;
}

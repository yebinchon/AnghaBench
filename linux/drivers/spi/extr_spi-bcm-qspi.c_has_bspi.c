
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_qspi {int bspi_mode; } ;



__attribute__((used)) static inline bool has_bspi(struct bcm_qspi *qspi)
{
 return qspi->bspi_mode;
}

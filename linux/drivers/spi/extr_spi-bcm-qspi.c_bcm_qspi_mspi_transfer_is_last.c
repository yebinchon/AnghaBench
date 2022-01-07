
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qspi_trans {int trans; scalar_t__ mspi_last_trans; } ;
struct bcm_qspi {int master; } ;


 scalar_t__ spi_transfer_is_last (int ,int ) ;

__attribute__((used)) static bool bcm_qspi_mspi_transfer_is_last(struct bcm_qspi *qspi,
        struct qspi_trans *qt)
{
 if (qt->mspi_last_trans &&
     spi_transfer_is_last(qspi->master, qt->trans))
  return 1;
 else
  return 0;
}

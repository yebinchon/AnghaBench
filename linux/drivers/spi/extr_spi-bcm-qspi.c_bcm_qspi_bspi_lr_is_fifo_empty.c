
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_qspi {int dummy; } ;


 int BSPI ;
 int BSPI_RAF_STATUS ;
 int BSPI_RAF_STATUS_FIFO_EMPTY_MASK ;
 int bcm_qspi_read (struct bcm_qspi*,int ,int ) ;

__attribute__((used)) static int bcm_qspi_bspi_lr_is_fifo_empty(struct bcm_qspi *qspi)
{
 return (bcm_qspi_read(qspi, BSPI, BSPI_RAF_STATUS) &
    BSPI_RAF_STATUS_FIFO_EMPTY_MASK);
}

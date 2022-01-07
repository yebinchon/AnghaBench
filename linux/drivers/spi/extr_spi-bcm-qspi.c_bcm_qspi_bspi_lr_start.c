
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_qspi {int dummy; } ;


 int BSPI ;
 int BSPI_RAF_CTRL ;
 int BSPI_RAF_CTRL_START_MASK ;
 int bcm_qspi_bspi_busy_poll (struct bcm_qspi*) ;
 int bcm_qspi_write (struct bcm_qspi*,int ,int ,int ) ;

__attribute__((used)) static inline void bcm_qspi_bspi_lr_start(struct bcm_qspi *qspi)
{
 bcm_qspi_bspi_busy_poll(qspi);
 bcm_qspi_write(qspi, BSPI, BSPI_RAF_CTRL,
         BSPI_RAF_CTRL_START_MASK);
}

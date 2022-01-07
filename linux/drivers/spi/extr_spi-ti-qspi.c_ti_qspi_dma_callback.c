
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_qspi {int transfer_complete; } ;


 int complete (int *) ;

__attribute__((used)) static void ti_qspi_dma_callback(void *param)
{
 struct ti_qspi *qspi = param;

 complete(&qspi->transfer_complete);
}

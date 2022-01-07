
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_dspi {int dummy; } ;


 int dspi_push_rx (struct fsl_dspi*,int ) ;
 int fifo_read (struct fsl_dspi*) ;

__attribute__((used)) static void dspi_tcfq_read(struct fsl_dspi *dspi)
{
 dspi_push_rx(dspi, fifo_read(dspi));
}

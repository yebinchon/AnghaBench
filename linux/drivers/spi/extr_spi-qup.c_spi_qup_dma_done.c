
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_qup {int done; } ;


 int complete (int *) ;

__attribute__((used)) static void spi_qup_dma_done(void *data)
{
 struct spi_qup *qup = data;

 complete(&qup->done);
}

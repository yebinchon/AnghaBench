
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int SPI_MRBLR ;
 void* fsl_dummy_rx ;
 int fsl_dummy_rx_lock ;
 int fsl_dummy_rx_refcnt ;
 void* kmalloc (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void *fsl_spi_alloc_dummy_rx(void)
{
 mutex_lock(&fsl_dummy_rx_lock);

 if (!fsl_dummy_rx)
  fsl_dummy_rx = kmalloc(SPI_MRBLR, GFP_KERNEL);
 if (fsl_dummy_rx)
  fsl_dummy_rx_refcnt++;

 mutex_unlock(&fsl_dummy_rx_lock);

 return fsl_dummy_rx;
}

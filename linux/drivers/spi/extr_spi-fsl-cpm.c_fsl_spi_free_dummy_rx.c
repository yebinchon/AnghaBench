
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON (int) ;
 int * fsl_dummy_rx ;
 int fsl_dummy_rx_lock ;
 int fsl_dummy_rx_refcnt ;
 int kfree (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void fsl_spi_free_dummy_rx(void)
{
 mutex_lock(&fsl_dummy_rx_lock);

 switch (fsl_dummy_rx_refcnt) {
 case 0:
  WARN_ON(1);
  break;
 case 1:
  kfree(fsl_dummy_rx);
  fsl_dummy_rx = ((void*)0);

 default:
  fsl_dummy_rx_refcnt--;
  break;
 }

 mutex_unlock(&fsl_dummy_rx_lock);
}

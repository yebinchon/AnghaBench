
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int napi; int irq; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int BIT (int) ;
 int CVMX_POW_WQ_INT_THRX (int) ;
 int CVMX_SSO_WQ_INT_THRX (int) ;
 int OCTEON_CN68XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int cvm_oct_device ;
 int cvmx_write_csr (int ,int ) ;
 int free_irq (int ,int ) ;
 int netif_napi_del (int *) ;
 TYPE_1__* oct_rx_group ;
 int pow_receive_groups ;

void cvm_oct_rx_shutdown(void)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(oct_rx_group); i++) {
  if (!(pow_receive_groups & BIT(i)))
   continue;


  if (OCTEON_IS_MODEL(OCTEON_CN68XX))
   cvmx_write_csr(CVMX_SSO_WQ_INT_THRX(i), 0);
  else
   cvmx_write_csr(CVMX_POW_WQ_INT_THRX(i), 0);


  free_irq(oct_rx_group[i].irq, cvm_oct_device);

  netif_napi_del(&oct_rx_group[i].napi);
 }
}

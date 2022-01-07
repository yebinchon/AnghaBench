
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_CIU_TIMX (int) ;
 int OCTEON_IRQ_TIMER1 ;
 int cvm_oct_device ;
 int cvm_oct_tx_cleanup_watchdog ;
 int cvmx_write_csr (int ,int ) ;
 int panic (char*,int ) ;
 int request_irq (int ,int ,int ,char*,int ) ;

void cvm_oct_tx_initialize(void)
{
 int i;


 cvmx_write_csr(CVMX_CIU_TIMX(1), 0);

 i = request_irq(OCTEON_IRQ_TIMER1,
   cvm_oct_tx_cleanup_watchdog, 0,
   "Ethernet", cvm_oct_device);

 if (i)
  panic("Could not acquire Ethernet IRQ %d\n", OCTEON_IRQ_TIMER1);
}

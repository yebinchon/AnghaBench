
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int CVMX_CIU_TIMX (int) ;
 int IRQ_HANDLED ;
 int cvm_oct_tx_cleanup_tasklet ;
 int cvmx_write_csr (int ,int ) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t cvm_oct_tx_cleanup_watchdog(int cpl, void *dev_id)
{

 cvmx_write_csr(CVMX_CIU_TIMX(1), 0);

 tasklet_schedule(&cvm_oct_tx_cleanup_tasklet);
 return IRQ_HANDLED;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtu3 {int num_eps; } ;


 int QMU_RX_DONE_INT (int) ;
 int QMU_TX_DONE_INT (int) ;
 int qmu_done_rx (struct mtu3*,int) ;
 int qmu_done_tx (struct mtu3*,int) ;

__attribute__((used)) static void qmu_done_isr(struct mtu3 *mtu, u32 done_status)
{
 int i;

 for (i = 1; i < mtu->num_eps; i++) {
  if (done_status & QMU_RX_DONE_INT(i))
   qmu_done_rx(mtu, i);
  if (done_status & QMU_TX_DONE_INT(i))
   qmu_done_tx(mtu, i);
 }
}

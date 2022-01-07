
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int one_shot; int len; } ;
union cvmx_ciu_timx {scalar_t__ u64; TYPE_1__ s; } ;


 int CVMX_CIU_TIMX (int) ;
 int cvm_oct_tx_poll_interval ;
 int cvmx_write_csr (int ,scalar_t__) ;

__attribute__((used)) static void cvm_oct_kick_tx_poll_watchdog(void)
{
 union cvmx_ciu_timx ciu_timx;

 ciu_timx.u64 = 0;
 ciu_timx.s.one_shot = 1;
 ciu_timx.s.len = cvm_oct_tx_poll_interval;
 cvmx_write_csr(CVMX_CIU_TIMX(1), ciu_timx.u64);
}

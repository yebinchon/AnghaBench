
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int a_aidl_bdis_tmr ;
 int a_wait_bcon_tmr ;
 int a_wait_enum_tmr ;
 int a_wait_vrise_tmr ;
 int b_ase0_brst_tmr ;
 int b_data_pulse_tmr ;
 int b_se0_srp_tmr ;
 int b_srp_fail_tmr ;
 int b_srp_wait_tmr ;
 int b_vbus_pulse_tmr ;
 int kfree (int ) ;

void fsl_otg_uninit_timers(void)
{

 kfree(a_wait_vrise_tmr);
 kfree(a_wait_bcon_tmr);
 kfree(a_aidl_bdis_tmr);
 kfree(b_ase0_brst_tmr);
 kfree(b_se0_srp_tmr);
 kfree(b_srp_fail_tmr);
 kfree(a_wait_enum_tmr);


 kfree(b_srp_wait_tmr);
 kfree(b_data_pulse_tmr);
 kfree(b_vbus_pulse_tmr);
}

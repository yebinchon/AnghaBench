
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fsl_otg_loc_conn (int ) ;
 int fsl_otg_pulse_vbus () ;

void b_data_pulse_end(unsigned long foo)
{


 fsl_otg_loc_conn(0);



 fsl_otg_pulse_vbus();
}

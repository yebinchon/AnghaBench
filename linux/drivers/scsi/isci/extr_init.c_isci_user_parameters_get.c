
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sci_user_parameters {int max_concurr_spinup; int no_outbound_task_timeout; int ssp_max_occupancy_timeout; int stp_max_occupancy_timeout; int ssp_inactivity_timeout; int stp_inactivity_timeout; struct sci_phy_user_params* phys; } ;
struct sci_phy_user_params {int align_insertion_frequency; int in_connection_align_insertion_frequency; int notify_enable_spin_up_insertion_frequency; int max_speed_generation; } ;


 int SCI_MAX_PHYS ;
 int max_concurr_spinup ;
 int no_outbound_task_to ;
 int phy_gen ;
 int ssp_inactive_to ;
 int ssp_max_occ_to ;
 int stp_inactive_to ;
 int stp_max_occ_to ;

__attribute__((used)) static void isci_user_parameters_get(struct sci_user_parameters *u)
{
 int i;

 for (i = 0; i < SCI_MAX_PHYS; i++) {
  struct sci_phy_user_params *u_phy = &u->phys[i];

  u_phy->max_speed_generation = phy_gen;


  u_phy->align_insertion_frequency = 0x7f;
  u_phy->in_connection_align_insertion_frequency = 0xff;
  u_phy->notify_enable_spin_up_insertion_frequency = 0x33;
 }

 u->stp_inactivity_timeout = stp_inactive_to;
 u->ssp_inactivity_timeout = ssp_inactive_to;
 u->stp_max_occupancy_timeout = stp_max_occ_to;
 u->ssp_max_occupancy_timeout = ssp_max_occ_to;
 u->no_outbound_task_timeout = no_outbound_task_to;
 u->max_concurr_spinup = max_concurr_spinup;
}

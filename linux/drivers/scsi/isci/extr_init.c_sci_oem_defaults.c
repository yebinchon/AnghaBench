
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sci_user_parameters {int stp_inactivity_timeout; int ssp_inactivity_timeout; int stp_max_occupancy_timeout; int ssp_max_occupancy_timeout; int no_outbound_task_timeout; TYPE_3__* phys; } ;
struct TYPE_6__ {int max_concurr_spin_up; int do_enable_ssc; scalar_t__ cable_selection_mask; int mode_type; } ;
struct sci_oem_params {TYPE_5__* phys; TYPE_2__* ports; TYPE_1__ controller; } ;
struct isci_host {scalar_t__ id; struct sci_oem_params oem_parameters; struct sci_user_parameters user_parameters; } ;
struct TYPE_9__ {int high; scalar_t__ low; } ;
struct TYPE_10__ {TYPE_4__ sas_address; } ;
struct TYPE_8__ {int align_insertion_frequency; int in_connection_align_insertion_frequency; int notify_enable_spin_up_insertion_frequency; int max_speed_generation; } ;
struct TYPE_7__ {scalar_t__ phy_mask; } ;


 int SCIC_PORT_AUTOMATIC_CONFIGURATION_MODE ;
 int SCIC_SDS_PARM_GEN2_SPEED ;
 int SCI_MAX_PHYS ;
 int SCI_MAX_PORTS ;

__attribute__((used)) static void sci_oem_defaults(struct isci_host *ihost)
{

 struct sci_user_parameters *user = &ihost->user_parameters;
 struct sci_oem_params *oem = &ihost->oem_parameters;
 int i;


 oem->controller.mode_type = SCIC_PORT_AUTOMATIC_CONFIGURATION_MODE;


 oem->controller.max_concurr_spin_up = 1;


 oem->controller.do_enable_ssc = 0;


 oem->controller.cable_selection_mask = 0;


 for (i = 0; i < SCI_MAX_PORTS; i++)
  oem->ports[i].phy_mask = 0;


 for (i = 0; i < SCI_MAX_PHYS; i++) {

  user->phys[i].max_speed_generation = SCIC_SDS_PARM_GEN2_SPEED;


  user->phys[i].align_insertion_frequency = 0x7f;
  user->phys[i].in_connection_align_insertion_frequency = 0xff;
  user->phys[i].notify_enable_spin_up_insertion_frequency = 0x33;






  oem->phys[i].sas_address.low = 0x1 + ihost->id;
  oem->phys[i].sas_address.high = 0x5FCFFFFF;
 }

 user->stp_inactivity_timeout = 5;
 user->ssp_inactivity_timeout = 5;
 user->stp_max_occupancy_timeout = 5;
 user->ssp_max_occupancy_timeout = 20;
 user->no_outbound_task_timeout = 2;
}

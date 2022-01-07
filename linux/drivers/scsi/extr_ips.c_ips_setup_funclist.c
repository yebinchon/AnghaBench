
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {void* issue; int enableint; int verifybios; int programbios; int erasebios; void* intr; int reset; int statinit; int statupd; int init; int isinit; int isintr; } ;
struct TYPE_9__ {TYPE_1__ func; } ;
typedef TYPE_2__ ips_ha_t ;


 scalar_t__ IPS_IS_MARCO (TYPE_2__*) ;
 scalar_t__ IPS_IS_MORPHEUS (TYPE_2__*) ;
 scalar_t__ IPS_USE_I2O_DELIVER (TYPE_2__*) ;
 scalar_t__ IPS_USE_MEMIO (TYPE_2__*) ;
 int ips_enable_int_copperhead ;
 int ips_enable_int_copperhead_memio ;
 int ips_enable_int_morpheus ;
 int ips_erase_bios ;
 int ips_erase_bios_memio ;
 int ips_init_copperhead ;
 int ips_init_copperhead_memio ;
 int ips_init_morpheus ;
 void* ips_intr_copperhead ;
 void* ips_intr_morpheus ;
 int ips_isinit_copperhead ;
 int ips_isinit_copperhead_memio ;
 int ips_isinit_morpheus ;
 int ips_isintr_copperhead ;
 int ips_isintr_copperhead_memio ;
 int ips_isintr_morpheus ;
 void* ips_issue_copperhead ;
 void* ips_issue_copperhead_memio ;
 void* ips_issue_i2o ;
 void* ips_issue_i2o_memio ;
 int ips_program_bios ;
 int ips_program_bios_memio ;
 int ips_reset_copperhead ;
 int ips_reset_copperhead_memio ;
 int ips_reset_morpheus ;
 int ips_statinit ;
 int ips_statinit_memio ;
 int ips_statupd_copperhead ;
 int ips_statupd_copperhead_memio ;
 int ips_statupd_morpheus ;
 int ips_verify_bios ;
 int ips_verify_bios_memio ;

__attribute__((used)) static void
ips_setup_funclist(ips_ha_t * ha)
{




 if (IPS_IS_MORPHEUS(ha) || IPS_IS_MARCO(ha)) {

  ha->func.isintr = ips_isintr_morpheus;
  ha->func.isinit = ips_isinit_morpheus;
  ha->func.issue = ips_issue_i2o_memio;
  ha->func.init = ips_init_morpheus;
  ha->func.statupd = ips_statupd_morpheus;
  ha->func.reset = ips_reset_morpheus;
  ha->func.intr = ips_intr_morpheus;
  ha->func.enableint = ips_enable_int_morpheus;
 } else if (IPS_USE_MEMIO(ha)) {

  ha->func.isintr = ips_isintr_copperhead_memio;
  ha->func.isinit = ips_isinit_copperhead_memio;
  ha->func.init = ips_init_copperhead_memio;
  ha->func.statupd = ips_statupd_copperhead_memio;
  ha->func.statinit = ips_statinit_memio;
  ha->func.reset = ips_reset_copperhead_memio;
  ha->func.intr = ips_intr_copperhead;
  ha->func.erasebios = ips_erase_bios_memio;
  ha->func.programbios = ips_program_bios_memio;
  ha->func.verifybios = ips_verify_bios_memio;
  ha->func.enableint = ips_enable_int_copperhead_memio;
  if (IPS_USE_I2O_DELIVER(ha))
   ha->func.issue = ips_issue_i2o_memio;
  else
   ha->func.issue = ips_issue_copperhead_memio;
 } else {

  ha->func.isintr = ips_isintr_copperhead;
  ha->func.isinit = ips_isinit_copperhead;
  ha->func.init = ips_init_copperhead;
  ha->func.statupd = ips_statupd_copperhead;
  ha->func.statinit = ips_statinit;
  ha->func.reset = ips_reset_copperhead;
  ha->func.intr = ips_intr_copperhead;
  ha->func.erasebios = ips_erase_bios;
  ha->func.programbios = ips_program_bios;
  ha->func.verifybios = ips_verify_bios;
  ha->func.enableint = ips_enable_int_copperhead;

  if (IPS_USE_I2O_DELIVER(ha))
   ha->func.issue = ips_issue_i2o;
  else
   ha->func.issue = ips_issue_copperhead;
 }
}

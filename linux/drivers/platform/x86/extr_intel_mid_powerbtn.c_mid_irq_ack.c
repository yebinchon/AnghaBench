
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mid_pb_ddata {int mirqlvl1_addr; } ;


 int MSIC_PWRBTNM ;
 int intel_scu_ipc_update_register (int ,int ,int ) ;

__attribute__((used)) static int mid_irq_ack(struct mid_pb_ddata *ddata)
{
 return intel_scu_ipc_update_register(ddata->mirqlvl1_addr, 0, MSIC_PWRBTNM);
}

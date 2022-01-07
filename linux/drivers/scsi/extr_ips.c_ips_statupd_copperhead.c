
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {TYPE_2__* adapt; scalar_t__ io_addr; } ;
typedef TYPE_3__ ips_ha_t ;
struct TYPE_6__ {int hw_status_tail; int hw_status_start; TYPE_1__* p_status_tail; TYPE_1__* p_status_start; TYPE_1__* p_status_end; } ;
struct TYPE_5__ {int value; } ;
typedef int IPS_STATUS ;


 scalar_t__ IPS_REG_SQTR ;
 int METHOD_TRACE (char*,int) ;
 int outl (int,scalar_t__) ;

__attribute__((used)) static uint32_t
ips_statupd_copperhead(ips_ha_t * ha)
{
 METHOD_TRACE("ips_statupd_copperhead", 1);

 if (ha->adapt->p_status_tail != ha->adapt->p_status_end) {
  ha->adapt->p_status_tail++;
  ha->adapt->hw_status_tail += sizeof (IPS_STATUS);
 } else {
  ha->adapt->p_status_tail = ha->adapt->p_status_start;
  ha->adapt->hw_status_tail = ha->adapt->hw_status_start;
 }

 outl(ha->adapt->hw_status_tail,
      ha->io_addr + IPS_REG_SQTR);

 return (ha->adapt->p_status_tail->value);
}

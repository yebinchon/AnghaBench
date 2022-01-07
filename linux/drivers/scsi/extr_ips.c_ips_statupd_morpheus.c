
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ mem_ptr; } ;
typedef TYPE_1__ ips_ha_t ;


 scalar_t__ IPS_REG_I2O_OUTMSGQ ;
 int METHOD_TRACE (char*,int) ;
 int readl (scalar_t__) ;

__attribute__((used)) static uint32_t
ips_statupd_morpheus(ips_ha_t * ha)
{
 uint32_t val;

 METHOD_TRACE("ips_statupd_morpheus", 1);

 val = readl(ha->mem_ptr + IPS_REG_I2O_OUTMSGQ);

 return (val);
}

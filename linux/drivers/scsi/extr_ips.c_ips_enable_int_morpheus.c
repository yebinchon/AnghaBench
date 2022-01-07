
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ mem_ptr; } ;
typedef TYPE_1__ ips_ha_t ;


 scalar_t__ IPS_REG_I960_OIMR ;
 int METHOD_TRACE (char*,int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void
ips_enable_int_morpheus(ips_ha_t * ha)
{
 uint32_t Oimr;

 METHOD_TRACE("ips_enable_int_morpheus", 1);

 Oimr = readl(ha->mem_ptr + IPS_REG_I960_OIMR);
 Oimr &= ~0x08;
 writel(Oimr, ha->mem_ptr + IPS_REG_I960_OIMR);
 readl(ha->mem_ptr + IPS_REG_I960_OIMR);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ mem_ptr; } ;
typedef TYPE_1__ ips_ha_t ;


 int IPS_BIT_GHI ;
 int IPS_BIT_SCE ;
 int IPS_BIT_SQO ;
 scalar_t__ IPS_REG_HISR ;
 int METHOD_TRACE (char*,int) ;
 int readb (scalar_t__) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static int
ips_isintr_copperhead_memio(ips_ha_t * ha)
{
 uint8_t Isr;

 METHOD_TRACE("ips_isintr_memio", 2);

 Isr = readb(ha->mem_ptr + IPS_REG_HISR);

 if (Isr == 0xFF)

  return (0);

 if (Isr & IPS_BIT_SCE)
  return (1);
 else if (Isr & (IPS_BIT_SQO | IPS_BIT_GHI)) {


  writeb(Isr, ha->mem_ptr + IPS_REG_HISR);
 }

 return (0);
}

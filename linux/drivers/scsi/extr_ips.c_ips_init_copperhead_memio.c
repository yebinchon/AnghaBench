
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {scalar_t__ mem_ptr; TYPE_3__* pcidev; } ;
typedef TYPE_1__ ips_ha_t ;
struct TYPE_5__ {scalar_t__ revision; } ;


 int IPS_BIT_EBM ;
 int IPS_BIT_EI ;
 int IPS_BIT_GHI ;
 int IPS_BIT_OP ;
 int IPS_GOOD_POST_STATUS ;
 int IPS_MAX_CONFIG_BYTES ;
 int IPS_MAX_POST_BYTES ;
 int IPS_ONE_SEC ;
 int IPS_PRINTK (int ,TYPE_3__*,char*,int,int) ;
 scalar_t__ IPS_REG_CBSP ;
 scalar_t__ IPS_REG_CCCR ;
 scalar_t__ IPS_REG_HISR ;
 scalar_t__ IPS_REG_ISPR ;
 scalar_t__ IPS_REG_NDAE ;
 scalar_t__ IPS_REG_SCPR ;
 scalar_t__ IPS_REVID_TROMBONE64 ;
 int KERN_WARNING ;
 int MDELAY (int ) ;
 int METHOD_TRACE (char*,int) ;
 int readb (scalar_t__) ;
 int writeb (int,scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int
ips_init_copperhead_memio(ips_ha_t * ha)
{
 uint8_t Isr = 0;
 uint8_t Cbsp;
 uint8_t PostByte[IPS_MAX_POST_BYTES];
 uint8_t ConfigByte[IPS_MAX_CONFIG_BYTES];
 int i, j;

 METHOD_TRACE("ips_init_copperhead_memio", 1);

 for (i = 0; i < IPS_MAX_POST_BYTES; i++) {
  for (j = 0; j < 45; j++) {
   Isr = readb(ha->mem_ptr + IPS_REG_HISR);
   if (Isr & IPS_BIT_GHI)
    break;


   MDELAY(IPS_ONE_SEC);
  }

  if (j >= 45)

   return (0);

  PostByte[i] = readb(ha->mem_ptr + IPS_REG_ISPR);
  writeb(Isr, ha->mem_ptr + IPS_REG_HISR);
 }

 if (PostByte[0] < IPS_GOOD_POST_STATUS) {
  IPS_PRINTK(KERN_WARNING, ha->pcidev,
      "reset controller fails (post status %x %x).\n",
      PostByte[0], PostByte[1]);

  return (0);
 }

 for (i = 0; i < IPS_MAX_CONFIG_BYTES; i++) {
  for (j = 0; j < 240; j++) {
   Isr = readb(ha->mem_ptr + IPS_REG_HISR);
   if (Isr & IPS_BIT_GHI)
    break;


   MDELAY(IPS_ONE_SEC);
  }

  if (j >= 240)

   return (0);

  ConfigByte[i] = readb(ha->mem_ptr + IPS_REG_ISPR);
  writeb(Isr, ha->mem_ptr + IPS_REG_HISR);
 }

 for (i = 0; i < 240; i++) {
  Cbsp = readb(ha->mem_ptr + IPS_REG_CBSP);

  if ((Cbsp & IPS_BIT_OP) == 0)
   break;


  MDELAY(IPS_ONE_SEC);
 }

 if (i >= 240)

  return (0);


 writel(0x1010, ha->mem_ptr + IPS_REG_CCCR);


 writeb(IPS_BIT_EBM, ha->mem_ptr + IPS_REG_SCPR);

 if (ha->pcidev->revision == IPS_REVID_TROMBONE64)

  writel(0, ha->mem_ptr + IPS_REG_NDAE);


 writeb(IPS_BIT_EI, ha->mem_ptr + IPS_REG_HISR);


 return (1);
}

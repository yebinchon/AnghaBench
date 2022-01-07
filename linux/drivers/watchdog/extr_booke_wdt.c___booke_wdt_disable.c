
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SPRN_TCR ;
 int TCR_WIE ;
 int WDTP_MASK ;
 int __booke_wdt_ping (int *) ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;

__attribute__((used)) static void __booke_wdt_disable(void *data)
{
 u32 val;

 val = mfspr(SPRN_TCR);
 val &= ~(TCR_WIE | WDTP_MASK);
 mtspr(SPRN_TCR, val);


 __booke_wdt_ping(((void*)0));

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pmic_wrapper {TYPE_1__* slave; } ;
struct TYPE_2__ {int * dew_regs; } ;


 size_t PWRAP_DEW_CIPHER_RDY ;
 int pwrap_read (struct pmic_wrapper*,int ,int*) ;

__attribute__((used)) static bool pwrap_is_pmic_cipher_ready(struct pmic_wrapper *wrp)
{
 u32 rdata;
 int ret;

 ret = pwrap_read(wrp, wrp->slave->dew_regs[PWRAP_DEW_CIPHER_RDY],
    &rdata);
 if (ret)
  return 0;

 return rdata == 1;
}

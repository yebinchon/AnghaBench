
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmic_wrapper {int dummy; } ;


 int PWRAP_CIPHER_RDY ;
 int pwrap_readl (struct pmic_wrapper*,int ) ;

__attribute__((used)) static bool pwrap_is_cipher_ready(struct pmic_wrapper *wrp)
{
 return pwrap_readl(wrp, PWRAP_CIPHER_RDY) & 1;
}

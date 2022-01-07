
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pmic_wrapper {TYPE_1__* slave; } ;
struct TYPE_2__ {int (* pwrap_read ) (struct pmic_wrapper*,int ,int *) ;} ;


 int stub1 (struct pmic_wrapper*,int ,int *) ;

__attribute__((used)) static int pwrap_read(struct pmic_wrapper *wrp, u32 adr, u32 *rdata)
{
 return wrp->slave->pwrap_read(wrp, adr, rdata);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct spmi_pmic_arb {int* ppid_to_apid; } ;


 int ENODEV ;
 int PMIC_ARB_APID_VALID ;

__attribute__((used)) static int pmic_arb_ppid_to_apid_v5(struct spmi_pmic_arb *pmic_arb, u16 ppid)
{
 if (!(pmic_arb->ppid_to_apid[ppid] & PMIC_ARB_APID_VALID))
  return -ENODEV;

 return pmic_arb->ppid_to_apid[ppid] & ~PMIC_ARB_APID_VALID;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct spmi_pmic_arb {int ee; } ;
typedef enum pmic_arb_channel { ____Placeholder_pmic_arb_channel } pmic_arb_channel ;


 int pmic_arb_ppid_to_apid_v2 (struct spmi_pmic_arb*,int) ;

__attribute__((used)) static int pmic_arb_offset_v2(struct spmi_pmic_arb *pmic_arb, u8 sid, u16 addr,
      enum pmic_arb_channel ch_type)
{
 u16 apid;
 u16 ppid;
 int rc;

 ppid = sid << 8 | ((addr >> 8) & 0xFF);
 rc = pmic_arb_ppid_to_apid_v2(pmic_arb, ppid);
 if (rc < 0)
  return rc;

 apid = rc;
 return 0x1000 * pmic_arb->ee + 0x8000 * apid;
}

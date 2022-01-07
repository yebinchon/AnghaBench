
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct spmi_pmic_arb {int ee; } ;
typedef enum pmic_arb_channel { ____Placeholder_pmic_arb_channel } pmic_arb_channel ;




 int pmic_arb_ppid_to_apid_v5 (struct spmi_pmic_arb*,int) ;

__attribute__((used)) static int pmic_arb_offset_v5(struct spmi_pmic_arb *pmic_arb, u8 sid, u16 addr,
      enum pmic_arb_channel ch_type)
{
 u16 apid;
 int rc;
 u32 offset = 0;
 u16 ppid = (sid << 8) | (addr >> 8);

 rc = pmic_arb_ppid_to_apid_v5(pmic_arb, ppid);
 if (rc < 0)
  return rc;

 apid = rc;
 switch (ch_type) {
 case 129:
  offset = 0x10000 * pmic_arb->ee + 0x80 * apid;
  break;
 case 128:
  offset = 0x10000 * apid;
  break;
 }

 return offset;
}

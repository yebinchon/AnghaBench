
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct spmi_pmic_arb {size_t* ppid_to_apid; TYPE_1__* apid_data; scalar_t__ cnfg; int mapping_table_valid; int * mapping_table; } ;
struct TYPE_2__ {size_t ppid; } ;


 size_t BIT (int ) ;
 int ENODEV ;
 size_t PMIC_ARB_APID_VALID ;
 int SPMI_MAPPING_BIT_INDEX (int ) ;
 scalar_t__ SPMI_MAPPING_BIT_IS_0_FLAG (int ) ;
 void* SPMI_MAPPING_BIT_IS_0_RESULT (int ) ;
 scalar_t__ SPMI_MAPPING_BIT_IS_1_FLAG (int ) ;
 void* SPMI_MAPPING_BIT_IS_1_RESULT (int ) ;
 scalar_t__ SPMI_MAPPING_TABLE_REG (int) ;
 int SPMI_MAPPING_TABLE_TREE_DEPTH ;
 int readl_relaxed (scalar_t__) ;
 int test_and_set_bit (int,int ) ;

__attribute__((used)) static int pmic_arb_ppid_to_apid_v1(struct spmi_pmic_arb *pmic_arb, u16 ppid)
{
 u32 *mapping_table = pmic_arb->mapping_table;
 int index = 0, i;
 u16 apid_valid;
 u16 apid;
 u32 data;

 apid_valid = pmic_arb->ppid_to_apid[ppid];
 if (apid_valid & PMIC_ARB_APID_VALID) {
  apid = apid_valid & ~PMIC_ARB_APID_VALID;
  return apid;
 }

 for (i = 0; i < SPMI_MAPPING_TABLE_TREE_DEPTH; ++i) {
  if (!test_and_set_bit(index, pmic_arb->mapping_table_valid))
   mapping_table[index] = readl_relaxed(pmic_arb->cnfg +
      SPMI_MAPPING_TABLE_REG(index));

  data = mapping_table[index];

  if (ppid & BIT(SPMI_MAPPING_BIT_INDEX(data))) {
   if (SPMI_MAPPING_BIT_IS_1_FLAG(data)) {
    index = SPMI_MAPPING_BIT_IS_1_RESULT(data);
   } else {
    apid = SPMI_MAPPING_BIT_IS_1_RESULT(data);
    pmic_arb->ppid_to_apid[ppid]
     = apid | PMIC_ARB_APID_VALID;
    pmic_arb->apid_data[apid].ppid = ppid;
    return apid;
   }
  } else {
   if (SPMI_MAPPING_BIT_IS_0_FLAG(data)) {
    index = SPMI_MAPPING_BIT_IS_0_RESULT(data);
   } else {
    apid = SPMI_MAPPING_BIT_IS_0_RESULT(data);
    pmic_arb->ppid_to_apid[ppid]
     = apid | PMIC_ARB_APID_VALID;
    pmic_arb->apid_data[apid].ppid = ppid;
    return apid;
   }
  }
 }

 return -ENODEV;
}

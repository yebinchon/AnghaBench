
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct aat2870_regulator {int enable_shift; int enable_mask; int voltage_shift; int voltage_mask; int voltage_addr; int enable_addr; TYPE_1__ desc; } ;


 int AAT2870_ID_LDOA ;
 int AAT2870_LDO_AB ;
 int AAT2870_LDO_CD ;
 int AAT2870_LDO_EN ;
 int ARRAY_SIZE (struct aat2870_regulator*) ;
 struct aat2870_regulator* aat2870_regulators ;

__attribute__((used)) static struct aat2870_regulator *aat2870_get_regulator(int id)
{
 struct aat2870_regulator *ri = ((void*)0);
 int i;

 for (i = 0; i < ARRAY_SIZE(aat2870_regulators); i++) {
  ri = &aat2870_regulators[i];
  if (ri->desc.id == id)
   break;
 }

 if (i == ARRAY_SIZE(aat2870_regulators))
  return ((void*)0);

 ri->enable_addr = AAT2870_LDO_EN;
 ri->enable_shift = id - AAT2870_ID_LDOA;
 ri->enable_mask = 0x1 << ri->enable_shift;

 ri->voltage_addr = (id - AAT2870_ID_LDOA) / 2 ?
      AAT2870_LDO_CD : AAT2870_LDO_AB;
 ri->voltage_shift = (id - AAT2870_ID_LDOA) % 2 ? 0 : 4;
 ri->voltage_mask = 0xF << ri->voltage_shift;

 return ri;
}

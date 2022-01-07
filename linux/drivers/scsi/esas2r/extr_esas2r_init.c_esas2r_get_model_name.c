
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct esas2r_adapter {TYPE_1__* pcid; } ;
struct TYPE_2__ {int subsystem_device; } ;
const char *esas2r_get_model_name(struct esas2r_adapter *a)
{
 switch (a->pcid->subsystem_device) {
 case 132:
  return "ATTO ExpressSAS R680";

 case 136:
  return "ATTO ExpressSAS R608";

 case 135:
  return "ATTO ExpressSAS R60F";

 case 131:
  return "ATTO ExpressSAS R6F0";

 case 134:
  return "ATTO ExpressSAS R644";

 case 133:
  return "ATTO ExpressSAS R648";

 case 129:
  return "ATTO ThunderStream SC 3808D";

 case 128:
  return "ATTO ThunderStream SC 3808E";

 case 130:
  return "ATTO ThunderLink SH 1068";
 }

 return "ATTO SAS Controller";
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sense_reason_t ;
 int ALUA_AN_SUP ;
 int ALUA_AO_SUP ;
 int ALUA_LBD_SUP ;
 int ALUA_O_SUP ;
 int ALUA_S_SUP ;
 int ALUA_T_SUP ;
 int ALUA_U_SUP ;
 int TCM_INVALID_PARAMETER_LIST ;
 int core_alua_dump_state (int) ;
 int pr_err (char*,int) ;

__attribute__((used)) static sense_reason_t
core_alua_check_transition(int state, int valid, int *primary, int explicit)
{




 switch (state) {
 case 133:
  if (!(valid & ALUA_AO_SUP))
   goto not_supported;
  *primary = 1;
  break;
 case 134:
  if (!(valid & ALUA_AN_SUP))
   goto not_supported;
  *primary = 1;
  break;
 case 130:
  if (!(valid & ALUA_S_SUP))
   goto not_supported;
  *primary = 1;
  break;
 case 128:
  if (!(valid & ALUA_U_SUP))
   goto not_supported;
  *primary = 1;
  break;
 case 132:
  if (!(valid & ALUA_LBD_SUP))
   goto not_supported;
  *primary = 1;
  break;
 case 131:




  if (!(valid & ALUA_O_SUP))
   goto not_supported;
  *primary = 0;
  break;
 case 129:
  if (!(valid & ALUA_T_SUP) || explicit)




   goto not_supported;
  *primary = 0;
  break;
 default:
  pr_err("Unknown ALUA access state: 0x%02x\n", state);
  return TCM_INVALID_PARAMETER_LIST;
 }

 return 0;

not_supported:
 pr_err("ALUA access state %s not supported",
        core_alua_dump_state(state));
 return TCM_INVALID_PARAMETER_LIST;
}

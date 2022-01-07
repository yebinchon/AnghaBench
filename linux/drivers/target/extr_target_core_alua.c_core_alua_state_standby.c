
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int dummy; } ;


 int ASCQ_04H_ALUA_TG_PT_STANDBY ;
 int set_ascq (struct se_cmd*,int ) ;

__attribute__((used)) static inline int core_alua_state_standby(
 struct se_cmd *cmd,
 unsigned char *cdb)
{




 switch (cdb[0]) {
 case 147:
 case 146:
 case 145:
 case 141:
 case 140:
 case 133:
 case 134:
 case 130:
 case 135:
  return 0;
 case 129:
  switch (cdb[1] & 0x1f) {
  case 131:
   return 0;
  default:
   set_ascq(cmd, ASCQ_04H_ALUA_TG_PT_STANDBY);
   return 1;
  }
 case 144:
  switch (cdb[1] & 0x1f) {
  case 142:
   return 0;
  default:
   set_ascq(cmd, ASCQ_04H_ALUA_TG_PT_STANDBY);
   return 1;
  }
 case 143:
  switch (cdb[1]) {
  case 139:
   return 0;
  default:
   set_ascq(cmd, ASCQ_04H_ALUA_TG_PT_STANDBY);
   return 1;
  }
 case 132:
 case 138:
 case 137:
 case 136:
 case 128:
  return 0;
 default:
  set_ascq(cmd, ASCQ_04H_ALUA_TG_PT_STANDBY);
  return 1;
 }

 return 0;
}

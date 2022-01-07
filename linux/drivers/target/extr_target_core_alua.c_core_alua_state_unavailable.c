
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int dummy; } ;


 int ASCQ_04H_ALUA_TG_PT_UNAVAILABLE ;
 int set_ascq (struct se_cmd*,int ) ;

__attribute__((used)) static inline int core_alua_state_unavailable(
 struct se_cmd *cmd,
 unsigned char *cdb)
{




 switch (cdb[0]) {
 case 136:
 case 130:
  return 0;
 case 135:
  switch (cdb[1] & 0x1f) {
  case 133:
   return 0;
  default:
   set_ascq(cmd, ASCQ_04H_ALUA_TG_PT_UNAVAILABLE);
   return 1;
  }
 case 134:
  switch (cdb[1]) {
  case 132:
   return 0;
  default:
   set_ascq(cmd, ASCQ_04H_ALUA_TG_PT_UNAVAILABLE);
   return 1;
  }
 case 129:
 case 131:
 case 128:
  return 0;
 default:
  set_ascq(cmd, ASCQ_04H_ALUA_TG_PT_UNAVAILABLE);
  return 1;
 }

 return 0;
}

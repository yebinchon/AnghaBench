
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum transport_state_table { ____Placeholder_transport_state_table } transport_state_table ;
__attribute__((used)) static const char *cmd_state_name(enum transport_state_table t)
{
 switch (t) {
 case 130: return "NO_STATE";
 case 131: return "NEW_CMD";
 case 128: return "WRITE_PENDING";
 case 129: return "PROCESSING";
 case 136: return "COMPLETE";
 case 132:
     return "ISTATE_PROCESSING";
 case 133: return "COMPLETE_QF_WP";
 case 134: return "COMPLETE_QF_OK";
 case 135: return "COMPLETE_QF_ERR";
 }

 return "(?)";
}

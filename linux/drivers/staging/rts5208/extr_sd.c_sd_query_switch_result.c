
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtsx_chip {int dummy; } ;



 scalar_t__ CURRENT_LIMIT_400_MASK ;
 scalar_t__ CURRENT_LIMIT_400_QUERY_SWITCH_OK ;
 scalar_t__ CURRENT_LIMIT_400_SWITCH_BUSY ;

 scalar_t__ CURRENT_LIMIT_600_MASK ;
 scalar_t__ CURRENT_LIMIT_600_QUERY_SWITCH_OK ;
 scalar_t__ CURRENT_LIMIT_600_SWITCH_BUSY ;

 scalar_t__ CURRENT_LIMIT_800_MASK ;
 scalar_t__ CURRENT_LIMIT_800_QUERY_SWITCH_OK ;
 scalar_t__ CURRENT_LIMIT_800_SWITCH_BUSY ;
 size_t DATA_STRUCTURE_VER_OFFSET ;
 scalar_t__ DDR50_QUERY_SWITCH_OK ;

 scalar_t__ DDR50_SUPPORT_MASK ;
 scalar_t__ DDR50_SWITCH_BUSY ;

 scalar_t__ DRIVING_TYPE_A_MASK ;

 scalar_t__ DRIVING_TYPE_C_MASK ;

 scalar_t__ DRIVING_TYPE_D_MASK ;
 int FUNCTION_GROUP1_CHECK_BUSY_OFFSET ;
 int FUNCTION_GROUP1_QUERY_SWITCH_OFFSET ;
 int FUNCTION_GROUP1_SUPPORT_OFFSET ;
 int FUNCTION_GROUP3_CHECK_BUSY_OFFSET ;
 int FUNCTION_GROUP3_QUERY_SWITCH_OFFSET ;
 int FUNCTION_GROUP3_SUPPORT_OFFSET ;
 int FUNCTION_GROUP4_CHECK_BUSY_OFFSET ;
 int FUNCTION_GROUP4_QUERY_SWITCH_OFFSET ;
 int FUNCTION_GROUP4_SUPPORT_OFFSET ;
 scalar_t__ HS_QUERY_SWITCH_OK ;

 scalar_t__ HS_SUPPORT_MASK ;
 scalar_t__ HS_SWITCH_BUSY ;
 scalar_t__ SDR104_QUERY_SWITCH_OK ;

 scalar_t__ SDR104_SUPPORT_MASK ;
 scalar_t__ SDR104_SWITCH_BUSY ;
 scalar_t__ SDR50_QUERY_SWITCH_OK ;

 scalar_t__ SDR50_SUPPORT_MASK ;
 scalar_t__ SDR50_SWITCH_BUSY ;
 scalar_t__ SD_FUNC_GROUP_1 ;
 scalar_t__ SD_FUNC_GROUP_3 ;
 scalar_t__ SD_FUNC_GROUP_4 ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 scalar_t__ TYPE_A_QUERY_SWITCH_OK ;
 scalar_t__ TYPE_A_SWITCH_BUSY ;
 scalar_t__ TYPE_C_QUERY_SWITCH_OK ;
 scalar_t__ TYPE_C_SWITCH_BUSY ;
 scalar_t__ TYPE_D_QUERY_SWITCH_OK ;
 scalar_t__ TYPE_D_SWITCH_BUSY ;

__attribute__((used)) static int sd_query_switch_result(struct rtsx_chip *chip, u8 func_group,
      u8 func_to_switch, u8 *buf, int buf_len)
{
 u8 support_mask = 0, query_switch = 0, switch_busy = 0;
 int support_offset = 0, query_switch_offset = 0, check_busy_offset = 0;

 if (func_group == SD_FUNC_GROUP_1) {
  support_offset = FUNCTION_GROUP1_SUPPORT_OFFSET;
  query_switch_offset = FUNCTION_GROUP1_QUERY_SWITCH_OFFSET;
  check_busy_offset = FUNCTION_GROUP1_CHECK_BUSY_OFFSET;

  switch (func_to_switch) {
  case 130:
   support_mask = HS_SUPPORT_MASK;
   query_switch = HS_QUERY_SWITCH_OK;
   switch_busy = HS_SWITCH_BUSY;
   break;

  case 128:
   support_mask = SDR50_SUPPORT_MASK;
   query_switch = SDR50_QUERY_SWITCH_OK;
   switch_busy = SDR50_SWITCH_BUSY;
   break;

  case 129:
   support_mask = SDR104_SUPPORT_MASK;
   query_switch = SDR104_QUERY_SWITCH_OK;
   switch_busy = SDR104_SWITCH_BUSY;
   break;

  case 134:
   support_mask = DDR50_SUPPORT_MASK;
   query_switch = DDR50_QUERY_SWITCH_OK;
   switch_busy = DDR50_SWITCH_BUSY;
   break;

  default:
   return STATUS_FAIL;
  }
 } else if (func_group == SD_FUNC_GROUP_3) {
  support_offset = FUNCTION_GROUP3_SUPPORT_OFFSET;
  query_switch_offset = FUNCTION_GROUP3_QUERY_SWITCH_OFFSET;
  check_busy_offset = FUNCTION_GROUP3_CHECK_BUSY_OFFSET;

  switch (func_to_switch) {
  case 133:
   support_mask = DRIVING_TYPE_A_MASK;
   query_switch = TYPE_A_QUERY_SWITCH_OK;
   switch_busy = TYPE_A_SWITCH_BUSY;
   break;

  case 132:
   support_mask = DRIVING_TYPE_C_MASK;
   query_switch = TYPE_C_QUERY_SWITCH_OK;
   switch_busy = TYPE_C_SWITCH_BUSY;
   break;

  case 131:
   support_mask = DRIVING_TYPE_D_MASK;
   query_switch = TYPE_D_QUERY_SWITCH_OK;
   switch_busy = TYPE_D_SWITCH_BUSY;
   break;

  default:
   return STATUS_FAIL;
  }
 } else if (func_group == SD_FUNC_GROUP_4) {
  support_offset = FUNCTION_GROUP4_SUPPORT_OFFSET;
  query_switch_offset = FUNCTION_GROUP4_QUERY_SWITCH_OFFSET;
  check_busy_offset = FUNCTION_GROUP4_CHECK_BUSY_OFFSET;

  switch (func_to_switch) {
  case 137:
   support_mask = CURRENT_LIMIT_400_MASK;
   query_switch = CURRENT_LIMIT_400_QUERY_SWITCH_OK;
   switch_busy = CURRENT_LIMIT_400_SWITCH_BUSY;
   break;

  case 136:
   support_mask = CURRENT_LIMIT_600_MASK;
   query_switch = CURRENT_LIMIT_600_QUERY_SWITCH_OK;
   switch_busy = CURRENT_LIMIT_600_SWITCH_BUSY;
   break;

  case 135:
   support_mask = CURRENT_LIMIT_800_MASK;
   query_switch = CURRENT_LIMIT_800_QUERY_SWITCH_OK;
   switch_busy = CURRENT_LIMIT_800_SWITCH_BUSY;
   break;

  default:
   return STATUS_FAIL;
  }
 } else {
  return STATUS_FAIL;
 }

 if (func_group == SD_FUNC_GROUP_1) {
  if (!(buf[support_offset] & support_mask) ||
      ((buf[query_switch_offset] & 0x0F) != query_switch)) {
   return STATUS_FAIL;
  }
 }


 if ((buf[DATA_STRUCTURE_VER_OFFSET] == 0x01) &&
     ((buf[check_busy_offset] & switch_busy) == switch_busy)) {
  return STATUS_FAIL;
 }

 return STATUS_SUCCESS;
}

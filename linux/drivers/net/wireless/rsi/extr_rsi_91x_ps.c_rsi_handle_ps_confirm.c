
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rsi_hw {int ps_state; } ;


 int ERR_ZONE ;
 int PS_CONFIRM_INDEX ;
 int PS_DISABLE_REQ_SENT ;
 int PS_ENABLED ;
 int PS_ENABLE_REQ_SENT ;
 int PS_NONE ;


 int get_unaligned_le16 (int *) ;
 int rsi_dbg (int ,char*,int,int ) ;
 int rsi_modify_ps_state (struct rsi_hw*,int ) ;
 int str_psstate (int ) ;

int rsi_handle_ps_confirm(struct rsi_hw *adapter, u8 *msg)
{
 u16 cfm_type = get_unaligned_le16(msg + PS_CONFIRM_INDEX);

 switch (cfm_type) {
 case 129:
  if (adapter->ps_state == PS_ENABLE_REQ_SENT)
   rsi_modify_ps_state(adapter, PS_ENABLED);
  break;
 case 128:
  if (adapter->ps_state == PS_DISABLE_REQ_SENT)
   rsi_modify_ps_state(adapter, PS_NONE);
  break;
 default:
  rsi_dbg(ERR_ZONE,
   "Invalid PS confirm type %x in state %s\n",
   cfm_type, str_psstate(adapter->ps_state));
  return -1;
 }

 return 0;
}

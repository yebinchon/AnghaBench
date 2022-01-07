
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct btc_coexist {int dummy; } ;
typedef int __le16 ;


 int BT_OP_WRITE_REG_ADDR ;
 int BT_OP_WRITE_REG_VALUE ;
 int cpu_to_le16 (int ) ;
 int halbtc_send_bt_mp_operation (struct btc_coexist*,int ,scalar_t__*,int,int) ;

__attribute__((used)) static
void halbtc_set_bt_reg(void *btc_context, u8 reg_type, u32 offset, u32 set_val)
{
 struct btc_coexist *btcoexist = (struct btc_coexist *)btc_context;
 u8 cmd_buffer1[4] = {0};
 u8 cmd_buffer2[4] = {0};


 *((__le16 *)&cmd_buffer1[2]) = cpu_to_le16((u16)set_val);
 if (!halbtc_send_bt_mp_operation(btcoexist, BT_OP_WRITE_REG_VALUE,
      cmd_buffer1, 4, 200))
  return;


 cmd_buffer2[2] = reg_type;
 *((u8 *)&cmd_buffer2[3]) = (u8)offset;
 halbtc_send_bt_mp_operation(btcoexist, BT_OP_WRITE_REG_ADDR,
        cmd_buffer2, 4, 200);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct rtl8xxxu_priv {int dummy; } ;
struct TYPE_2__ {int operreq; void* addr; void* opcode; void* cmd; void* data; } ;
struct h2c_cmd {TYPE_1__ bt_mp_oper; } ;


 void* BT_MP_OP_WRITE_REG_VALUE ;
 void* H2C_8723B_BT_MP_OPER ;
 int memset (struct h2c_cmd*,int ,int) ;
 int rtl8xxxu_gen2_h2c_cmd (struct rtl8xxxu_priv*,struct h2c_cmd*,int) ;

__attribute__((used)) static void rtl8723bu_write_btreg(struct rtl8xxxu_priv *priv, u8 reg, u8 data)
{
 struct h2c_cmd h2c;
 int reqnum = 0;

 memset(&h2c, 0, sizeof(struct h2c_cmd));
 h2c.bt_mp_oper.cmd = H2C_8723B_BT_MP_OPER;
 h2c.bt_mp_oper.operreq = 0 | (reqnum << 4);
 h2c.bt_mp_oper.opcode = BT_MP_OP_WRITE_REG_VALUE;
 h2c.bt_mp_oper.data = data;
 rtl8xxxu_gen2_h2c_cmd(priv, &h2c, sizeof(h2c.bt_mp_oper));

 reqnum++;
 memset(&h2c, 0, sizeof(struct h2c_cmd));
 h2c.bt_mp_oper.cmd = H2C_8723B_BT_MP_OPER;
 h2c.bt_mp_oper.operreq = 0 | (reqnum << 4);
 h2c.bt_mp_oper.opcode = BT_MP_OP_WRITE_REG_VALUE;
 h2c.bt_mp_oper.addr = reg;
 rtl8xxxu_gen2_h2c_cmd(priv, &h2c, sizeof(h2c.bt_mp_oper));
}

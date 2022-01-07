
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bt431_regs {int dummy; } ;


 int BT431_CMD_4_1_MUX ;
 int BT431_REG_CMD ;
 int bt431_write_reg (struct bt431_regs*,int ,int ) ;

__attribute__((used)) static inline void bt431_erase_cursor(struct bt431_regs *regs)
{
 bt431_write_reg(regs, BT431_REG_CMD, BT431_CMD_4_1_MUX);
}

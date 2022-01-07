
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_msg {int len; int addr; int flags; } ;
struct gb_i2c_transfer_op {void* size; void* flags; void* addr; } ;


 void* cpu_to_le16 (int ) ;
 int gb_i2c_transfer_op_flags_map (int ) ;

__attribute__((used)) static void
gb_i2c_fill_transfer_op(struct gb_i2c_transfer_op *op, struct i2c_msg *msg)
{
 u16 flags = gb_i2c_transfer_op_flags_map(msg->flags);

 op->addr = cpu_to_le16(msg->addr);
 op->flags = cpu_to_le16(flags);
 op->size = cpu_to_le16(msg->len);
}

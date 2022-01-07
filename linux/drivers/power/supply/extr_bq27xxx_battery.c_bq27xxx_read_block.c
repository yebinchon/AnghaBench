
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int (* read_bulk ) (struct bq27xxx_device_info*,scalar_t__,int *,int) ;} ;
struct bq27xxx_device_info {scalar_t__* regs; int dev; TYPE_1__ bus; } ;


 int EINVAL ;
 int EPERM ;
 scalar_t__ INVALID_REG_ADDR ;
 int dev_dbg (int ,char*,scalar_t__,int) ;
 int stub1 (struct bq27xxx_device_info*,scalar_t__,int *,int) ;

__attribute__((used)) static inline int bq27xxx_read_block(struct bq27xxx_device_info *di, int reg_index,
         u8 *data, int len)
{
 int ret;

 if (!di || di->regs[reg_index] == INVALID_REG_ADDR)
  return -EINVAL;

 if (!di->bus.read_bulk)
  return -EPERM;

 ret = di->bus.read_bulk(di, di->regs[reg_index], data, len);
 if (ret < 0)
  dev_dbg(di->dev, "failed to read_bulk register 0x%02x (index %d)\n",
   di->regs[reg_index], reg_index);

 return ret;
}

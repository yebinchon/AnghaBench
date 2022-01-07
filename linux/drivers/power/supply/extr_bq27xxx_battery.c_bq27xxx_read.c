
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* read ) (struct bq27xxx_device_info*,scalar_t__,int) ;} ;
struct bq27xxx_device_info {scalar_t__* regs; int dev; TYPE_1__ bus; } ;


 int EINVAL ;
 scalar_t__ INVALID_REG_ADDR ;
 int dev_dbg (int ,char*,scalar_t__,int) ;
 int stub1 (struct bq27xxx_device_info*,scalar_t__,int) ;

__attribute__((used)) static inline int bq27xxx_read(struct bq27xxx_device_info *di, int reg_index,
          bool single)
{
 int ret;

 if (!di || di->regs[reg_index] == INVALID_REG_ADDR)
  return -EINVAL;

 ret = di->bus.read(di, di->regs[reg_index], single);
 if (ret < 0)
  dev_dbg(di->dev, "failed to read register 0x%02x (index %d)\n",
   di->regs[reg_index], reg_index);

 return ret;
}

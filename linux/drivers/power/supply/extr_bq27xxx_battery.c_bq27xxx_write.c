
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int (* write ) (struct bq27xxx_device_info*,scalar_t__,int ,int) ;} ;
struct bq27xxx_device_info {scalar_t__* regs; int dev; TYPE_1__ bus; } ;


 int EINVAL ;
 int EPERM ;
 scalar_t__ INVALID_REG_ADDR ;
 int dev_dbg (int ,char*,scalar_t__,int) ;
 int stub1 (struct bq27xxx_device_info*,scalar_t__,int ,int) ;

__attribute__((used)) static inline int bq27xxx_write(struct bq27xxx_device_info *di, int reg_index,
    u16 value, bool single)
{
 int ret;

 if (!di || di->regs[reg_index] == INVALID_REG_ADDR)
  return -EINVAL;

 if (!di->bus.write)
  return -EPERM;

 ret = di->bus.write(di, di->regs[reg_index], value, single);
 if (ret < 0)
  dev_dbg(di->dev, "failed to write register 0x%02x (index %d)\n",
   di->regs[reg_index], reg_index);

 return ret;
}

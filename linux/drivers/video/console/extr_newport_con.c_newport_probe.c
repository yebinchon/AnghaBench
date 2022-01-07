
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct newport_regs {int dummy; } ;
struct gio_device_id {int dummy; } ;
struct TYPE_2__ {int start; } ;
struct gio_device {TYPE_1__ resource; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ MAX_NR_CONSOLES ;
 int console_lock () ;
 int console_unlock () ;
 int do_take_over_console (int *,int ,scalar_t__,int) ;
 scalar_t__ ioremap (unsigned long,int) ;
 int newport_con ;
 struct newport_regs* npregs ;
 int request_mem_region (unsigned long,int,char*) ;

__attribute__((used)) static int newport_probe(struct gio_device *dev,
    const struct gio_device_id *id)
{
 unsigned long newport_addr;
 int err;

 if (!dev->resource.start)
  return -EINVAL;

 if (npregs)
  return -EBUSY;

 newport_addr = dev->resource.start + 0xF0000;
 if (!request_mem_region(newport_addr, 0x10000, "Newport"))
  return -ENODEV;

 npregs = (struct newport_regs *)
  ioremap(newport_addr, sizeof(struct newport_regs));
 console_lock();
 err = do_take_over_console(&newport_con, 0, MAX_NR_CONSOLES - 1, 1);
 console_unlock();
 return err;
}

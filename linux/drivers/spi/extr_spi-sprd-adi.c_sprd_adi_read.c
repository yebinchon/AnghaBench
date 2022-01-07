
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_adi {scalar_t__ hwlock; int dev; scalar_t__ base; } ;


 int ADI_HWSPINLOCK_TIMEOUT ;
 int ADI_READ_TIMEOUT ;
 int BIT_RD_CMD_BUSY ;
 int EBUSY ;
 int EIO ;
 int RD_ADDR_MASK ;
 int RD_ADDR_SHIFT ;
 int RD_VALUE_MASK ;
 int REG_ADDR_LOW_MASK ;
 scalar_t__ REG_ADI_RD_CMD ;
 scalar_t__ REG_ADI_RD_DATA ;
 int cpu_relax () ;
 int dev_err (int ,char*,...) ;
 int hwspin_lock_timeout_irqsave (scalar_t__,int ,unsigned long*) ;
 int hwspin_unlock_irqrestore (scalar_t__,unsigned long*) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int sprd_adi_read(struct sprd_adi *sadi, u32 reg_paddr, u32 *read_val)
{
 int read_timeout = ADI_READ_TIMEOUT;
 unsigned long flags;
 u32 val, rd_addr;
 int ret = 0;

 if (sadi->hwlock) {
  ret = hwspin_lock_timeout_irqsave(sadi->hwlock,
        ADI_HWSPINLOCK_TIMEOUT,
        &flags);
  if (ret) {
   dev_err(sadi->dev, "get the hw lock failed\n");
   return ret;
  }
 }





 writel_relaxed(reg_paddr, sadi->base + REG_ADI_RD_CMD);







 do {
  val = readl_relaxed(sadi->base + REG_ADI_RD_DATA);
  if (!(val & BIT_RD_CMD_BUSY))
   break;

  cpu_relax();
 } while (--read_timeout);

 if (read_timeout == 0) {
  dev_err(sadi->dev, "ADI read timeout\n");
  ret = -EBUSY;
  goto out;
 }







 rd_addr = (val & RD_ADDR_MASK ) >> RD_ADDR_SHIFT;

 if (rd_addr != (reg_paddr & REG_ADDR_LOW_MASK)) {
  dev_err(sadi->dev, "read error, reg addr = 0x%x, val = 0x%x\n",
   reg_paddr, val);
  ret = -EIO;
  goto out;
 }

 *read_val = val & RD_VALUE_MASK;

out:
 if (sadi->hwlock)
  hwspin_unlock_irqrestore(sadi->hwlock, &flags);
 return ret;
}

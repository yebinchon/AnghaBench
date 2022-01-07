
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_adi {int dev; scalar_t__ base; } ;


 int ADI_FIFO_DRAIN_TIMEOUT ;
 int BIT_FIFO_EMPTY ;
 int EBUSY ;
 scalar_t__ REG_ADI_ARM_FIFO_STS ;
 int cpu_relax () ;
 int dev_err (int ,char*) ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static int sprd_adi_drain_fifo(struct sprd_adi *sadi)
{
 u32 timeout = ADI_FIFO_DRAIN_TIMEOUT;
 u32 sts;

 do {
  sts = readl_relaxed(sadi->base + REG_ADI_ARM_FIFO_STS);
  if (sts & BIT_FIFO_EMPTY)
   break;

  cpu_relax();
 } while (--timeout);

 if (timeout == 0) {
  dev_err(sadi->dev, "drain write fifo timeout\n");
  return -EBUSY;
 }

 return 0;
}

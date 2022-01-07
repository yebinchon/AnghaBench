
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_adi {scalar_t__ base; } ;


 int BIT_FIFO_FULL ;
 scalar_t__ REG_ADI_ARM_FIFO_STS ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static int sprd_adi_fifo_is_full(struct sprd_adi *sadi)
{
 return readl_relaxed(sadi->base + REG_ADI_ARM_FIFO_STS) & BIT_FIFO_FULL;
}

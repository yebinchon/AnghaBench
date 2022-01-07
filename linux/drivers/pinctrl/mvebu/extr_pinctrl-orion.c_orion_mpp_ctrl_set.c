
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct mvebu_mpp_ctrl_data {int dummy; } ;


 unsigned int MVEBU_MPPS_PER_REG ;
 unsigned int MVEBU_MPP_BITS ;
 unsigned int MVEBU_MPP_MASK ;
 scalar_t__ high_mpp_base ;
 scalar_t__ mpp_base ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int orion_mpp_ctrl_set(struct mvebu_mpp_ctrl_data *data,
         unsigned pid, unsigned long config)
{
 unsigned shift = (pid % MVEBU_MPPS_PER_REG) * MVEBU_MPP_BITS;

 if (pid < 16) {
  unsigned off = (pid / MVEBU_MPPS_PER_REG) * MVEBU_MPP_BITS;
  u32 reg = readl(mpp_base + off) & ~(MVEBU_MPP_MASK << shift);
  writel(reg | (config << shift), mpp_base + off);
 }
 else {
  u32 reg = readl(high_mpp_base) & ~(MVEBU_MPP_MASK << shift);
  writel(reg | (config << shift), high_mpp_base);
 }

 return 0;
}

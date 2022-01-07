
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_mpp_ctrl_data {int dummy; } ;


 unsigned int MVEBU_MPPS_PER_REG ;
 unsigned int MVEBU_MPP_BITS ;
 unsigned int MVEBU_MPP_MASK ;
 scalar_t__ high_mpp_base ;
 scalar_t__ mpp_base ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static int orion_mpp_ctrl_get(struct mvebu_mpp_ctrl_data *data,
         unsigned pid, unsigned long *config)
{
 unsigned shift = (pid % MVEBU_MPPS_PER_REG) * MVEBU_MPP_BITS;

 if (pid < 16) {
  unsigned off = (pid / MVEBU_MPPS_PER_REG) * MVEBU_MPP_BITS;
  *config = (readl(mpp_base + off) >> shift) & MVEBU_MPP_MASK;
 }
 else {
  *config = (readl(high_mpp_base) >> shift) & MVEBU_MPP_MASK;
 }

 return 0;
}

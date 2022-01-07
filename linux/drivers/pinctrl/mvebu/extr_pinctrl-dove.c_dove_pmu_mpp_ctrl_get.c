
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_mpp_ctrl_data {scalar_t__ base; } ;


 unsigned long BIT (unsigned int) ;
 unsigned long CONFIG_PMU ;
 unsigned int MVEBU_MPPS_PER_REG ;
 unsigned int MVEBU_MPP_BITS ;
 unsigned long MVEBU_MPP_MASK ;
 scalar_t__ PMU_MPP_GENERAL_CTRL ;
 scalar_t__ PMU_SIGNAL_SELECT_0 ;
 int mvebu_mmio_mpp_ctrl_get (struct mvebu_mpp_ctrl_data*,unsigned int,unsigned long*) ;
 scalar_t__ pmu_base ;
 unsigned long readl (scalar_t__) ;

__attribute__((used)) static int dove_pmu_mpp_ctrl_get(struct mvebu_mpp_ctrl_data *data,
     unsigned pid, unsigned long *config)
{
 unsigned off = (pid / MVEBU_MPPS_PER_REG) * MVEBU_MPP_BITS;
 unsigned shift = (pid % MVEBU_MPPS_PER_REG) * MVEBU_MPP_BITS;
 unsigned long pmu = readl(data->base + PMU_MPP_GENERAL_CTRL);
 unsigned long func;

 if ((pmu & BIT(pid)) == 0)
  return mvebu_mmio_mpp_ctrl_get(data, pid, config);

 func = readl(pmu_base + PMU_SIGNAL_SELECT_0 + off);
 *config = (func >> shift) & MVEBU_MPP_MASK;
 *config |= CONFIG_PMU;

 return 0;
}

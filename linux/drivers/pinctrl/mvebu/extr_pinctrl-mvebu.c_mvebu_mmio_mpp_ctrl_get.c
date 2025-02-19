
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_mpp_ctrl_data {scalar_t__ base; } ;


 unsigned int MVEBU_MPPS_PER_REG ;
 unsigned int MVEBU_MPP_BITS ;
 unsigned int MVEBU_MPP_MASK ;
 unsigned int readl (scalar_t__) ;

int mvebu_mmio_mpp_ctrl_get(struct mvebu_mpp_ctrl_data *data,
        unsigned int pid, unsigned long *config)
{
 unsigned off = (pid / MVEBU_MPPS_PER_REG) * MVEBU_MPP_BITS;
 unsigned shift = (pid % MVEBU_MPPS_PER_REG) * MVEBU_MPP_BITS;

 *config = (readl(data->base + off) >> shift) & MVEBU_MPP_MASK;

 return 0;
}

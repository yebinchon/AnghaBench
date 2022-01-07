
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_mpp_ctrl_data {scalar_t__ base; } ;


 unsigned long AU0_AC97_SEL ;
 scalar_t__ PMU_MPP_GENERAL_CTRL ;
 unsigned long readl (scalar_t__) ;

__attribute__((used)) static int dove_audio0_ctrl_get(struct mvebu_mpp_ctrl_data *data, unsigned pid,
    unsigned long *config)
{
 unsigned long pmu = readl(data->base + PMU_MPP_GENERAL_CTRL);

 *config = ((pmu & AU0_AC97_SEL) != 0);

 return 0;
}

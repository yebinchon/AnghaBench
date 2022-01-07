
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hantro_dev {TYPE_1__* clocks; } ;
struct TYPE_2__ {int clk; } ;


 int RK3399_ACLK_MAX_FREQ ;
 int clk_set_rate (int ,int ) ;

__attribute__((used)) static int rk3399_vpu_hw_init(struct hantro_dev *vpu)
{

 clk_set_rate(vpu->clocks[0].clk, RK3399_ACLK_MAX_FREQ);
 return 0;
}

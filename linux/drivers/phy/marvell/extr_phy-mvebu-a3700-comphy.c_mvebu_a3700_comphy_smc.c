
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_smccc_res {int a0; } ;


 int arm_smccc_smc (unsigned long,unsigned long,unsigned long,int ,int ,int ,int ,int ,struct arm_smccc_res*) ;

__attribute__((used)) static int mvebu_a3700_comphy_smc(unsigned long function, unsigned long lane,
      unsigned long mode)
{
 struct arm_smccc_res res;

 arm_smccc_smc(function, lane, mode, 0, 0, 0, 0, 0, &res);

 return res.a0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_smccc_res {int dummy; } ;


 int arm_smccc_hvc (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,struct arm_smccc_res*) ;

__attribute__((used)) static void optee_smccc_hvc(unsigned long a0, unsigned long a1,
       unsigned long a2, unsigned long a3,
       unsigned long a4, unsigned long a5,
       unsigned long a6, unsigned long a7,
       struct arm_smccc_res *res)
{
 arm_smccc_hvc(a0, a1, a2, a3, a4, a5, a6, a7, res);
}

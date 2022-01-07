
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int REG_PFDR_CFG ;
 int REG_PFDR_FP_LWIT ;
 int qm_ccsr_out (int ,int) ;

__attribute__((used)) static void qm_set_pfdr_threshold(u32 th, u8 k)
{
 qm_ccsr_out(REG_PFDR_FP_LWIT, th & 0xffffff);
 qm_ccsr_out(REG_PFDR_CFG, k);
}

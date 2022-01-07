
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int REG_SFDR_CFG ;
 int qm_ccsr_out (int ,int) ;

__attribute__((used)) static void qm_set_sfdr_threshold(u16 th)
{
 qm_ccsr_out(REG_SFDR_CFG, th & 0x3ff);
}

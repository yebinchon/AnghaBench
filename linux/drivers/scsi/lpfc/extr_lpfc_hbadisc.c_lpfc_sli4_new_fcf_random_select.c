
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_hba {int dummy; } ;


 int prandom_u32 () ;

__attribute__((used)) static bool
lpfc_sli4_new_fcf_random_select(struct lpfc_hba *phba, uint32_t fcf_cnt)
{
 uint32_t rand_num;


 rand_num = 0xFFFF & prandom_u32();


 if ((fcf_cnt * rand_num) < 0xFFFF)
  return 1;
 else
  return 0;
}

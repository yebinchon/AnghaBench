
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int*) ;
 int* punit_msr_white_list ;

__attribute__((used)) static bool match_punit_msr_white_list(int msr)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(punit_msr_white_list); ++i) {
  if (punit_msr_white_list[i] == msr)
   return 1;
 }

 return 0;
}

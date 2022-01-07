
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DTSF_APPLY_FAIL ;
 int DTSF_REVERT_FAIL ;
 int devicetree_state_flags ;

__attribute__((used)) static int devicetree_corrupt(void)
{
 return devicetree_state_flags &
  (DTSF_APPLY_FAIL | DTSF_REVERT_FAIL);
}

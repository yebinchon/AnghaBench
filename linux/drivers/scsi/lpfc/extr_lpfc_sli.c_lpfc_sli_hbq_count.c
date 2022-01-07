
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int lpfc_hbq_defs ;

int
lpfc_sli_hbq_count(void)
{
 return ARRAY_SIZE(lpfc_hbq_defs);
}

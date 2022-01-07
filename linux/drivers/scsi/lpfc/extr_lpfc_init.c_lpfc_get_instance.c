
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int idr_alloc (int *,int *,int ,int ,int ) ;
 int lpfc_hba_index ;

int
lpfc_get_instance(void)
{
 int ret;

 ret = idr_alloc(&lpfc_hba_index, ((void*)0), 0, 0, GFP_KERNEL);
 return ret < 0 ? -1 : ret;
}

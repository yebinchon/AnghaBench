
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OCF_LENGTH_CPC_NAME ;
 int cpc_name ;
 int memcpy (char*,int ,int ) ;
 int sclp_ocf_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void sclp_ocf_cpc_name_copy(char *dst)
{
 spin_lock_irq(&sclp_ocf_lock);
 memcpy(dst, cpc_name, OCF_LENGTH_CPC_NAME);
 spin_unlock_irq(&sclp_ocf_lock);
}

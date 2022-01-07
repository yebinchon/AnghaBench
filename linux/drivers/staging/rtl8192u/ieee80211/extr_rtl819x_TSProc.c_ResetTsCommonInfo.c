
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union qos_tclas {int dummy; } qos_tclas ;
struct tspec_body {int dummy; } ;
struct ts_common_info {scalar_t__ t_clas_num; scalar_t__ t_clas_proc; int t_class; int t_spec; int addr; } ;


 int TCLAS_NUM ;
 int eth_zero_addr (int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void ResetTsCommonInfo(struct ts_common_info *pTsCommonInfo)
{
 eth_zero_addr(pTsCommonInfo->addr);
 memset(&pTsCommonInfo->t_spec, 0, sizeof(struct tspec_body));
 memset(&pTsCommonInfo->t_class, 0, sizeof(union qos_tclas) * TCLAS_NUM);
 pTsCommonInfo->t_clas_proc = 0;
 pTsCommonInfo->t_clas_num = 0;
}

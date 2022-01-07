
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union tspec_body {int dummy; } tspec_body ;
typedef union qos_tclas {int dummy; } qos_tclas ;
struct ts_common_info {scalar_t__ TClasNum; scalar_t__ TClasProc; int TClass; int TSpec; int Addr; } ;


 int TCLAS_NUM ;
 int eth_zero_addr (int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void ResetTsCommonInfo(struct ts_common_info *pTsCommonInfo)
{
 eth_zero_addr(pTsCommonInfo->Addr);
 memset(&pTsCommonInfo->TSpec, 0, sizeof(union tspec_body));
 memset(&pTsCommonInfo->TClass, 0, sizeof(union qos_tclas)*TCLAS_NUM);
 pTsCommonInfo->TClasProc = 0;
 pTsCommonInfo->TClasNum = 0;
}

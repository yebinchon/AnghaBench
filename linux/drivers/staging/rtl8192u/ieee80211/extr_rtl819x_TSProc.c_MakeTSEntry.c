
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union qos_tclas {int dummy; } qos_tclas ;
typedef size_t u8 ;
struct tspec_body {int dummy; } ;
struct ts_common_info {size_t* addr; size_t t_clas_proc; size_t t_clas_num; int * t_class; int t_spec; } ;


 int memcpy (size_t*,size_t*,int) ;

__attribute__((used)) static void MakeTSEntry(struct ts_common_info *pTsCommonInfo, u8 *Addr,
   struct tspec_body *pTSPEC, union qos_tclas *pTCLAS, u8 TCLAS_Num,
   u8 TCLAS_Proc)
{
 u8 count;

 if (pTsCommonInfo == ((void*)0))
  return;

 memcpy(pTsCommonInfo->addr, Addr, 6);

 if (pTSPEC != ((void*)0))
  memcpy((u8 *)(&(pTsCommonInfo->t_spec)), (u8 *)pTSPEC, sizeof(struct tspec_body));

 for (count = 0; count < TCLAS_Num; count++)
  memcpy((u8 *)(&(pTsCommonInfo->t_class[count])), (u8 *)pTCLAS, sizeof(union qos_tclas));

 pTsCommonInfo->t_clas_proc = TCLAS_Proc;
 pTsCommonInfo->t_clas_num = TCLAS_Num;
}

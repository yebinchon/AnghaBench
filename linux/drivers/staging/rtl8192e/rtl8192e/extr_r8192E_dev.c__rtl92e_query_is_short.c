
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cb_desc {scalar_t__ bUseShortPreamble; scalar_t__ bUseShortGI; } ;


 int DESC90_RATEMCS15 ;

__attribute__((used)) static u8 _rtl92e_query_is_short(u8 TxHT, u8 TxRate, struct cb_desc *tcb_desc)
{
 u8 tmp_Short;

 tmp_Short = (TxHT == 1) ? ((tcb_desc->bUseShortGI) ? 1 : 0) :
   ((tcb_desc->bUseShortPreamble) ? 1 : 0);
 if (TxHT == 1 && TxRate != DESC90_RATEMCS15)
  tmp_Short = 0;

 return tmp_Short;
}

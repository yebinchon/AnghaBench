
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;


 int kfree (int *) ;

__attribute__((used)) static void rtw_free_mlme_ie_data(u8 **ppie, u32 *plen)
{
 if (*ppie) {
  kfree(*ppie);
  *plen = 0;
  *ppie = ((void*)0);
 }
}

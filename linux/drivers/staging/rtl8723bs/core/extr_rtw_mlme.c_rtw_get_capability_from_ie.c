
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



u8 *rtw_get_capability_from_ie(u8 *ie)
{
 return ie + 8 + 2;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int memcpy (void*,void*,unsigned int) ;

u8 *rtw_set_fixed_ie(void *pbuf, unsigned int len, void *source,
       unsigned int *frlen)
{
 memcpy(pbuf, source, len);
 *frlen = *frlen + len;
 return ((u8 *)pbuf) + len;
}

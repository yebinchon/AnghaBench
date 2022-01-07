
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;


 int memcpy (void*,void*,unsigned int) ;

u8 *rtw_set_fixed_ie(unsigned char *pbuf, unsigned int len, unsigned char *source,
    unsigned int *frlen)
{
 memcpy((void *)pbuf, (void *)source, len);
 *frlen = *frlen + len;
 return pbuf + len;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le16 ;



__attribute__((used)) static inline __le16 *
UniStrcat(__le16 *ucs1, const __le16 *ucs2)
{
 __le16 *anchor = ucs1;

 while (*ucs1++) ;
 ucs1--;
 while ((*ucs1++ = *ucs2++)) ;
 return anchor;
}

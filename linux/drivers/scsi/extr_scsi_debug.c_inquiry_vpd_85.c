
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (unsigned char*,char const*,int) ;
 int memset (unsigned char*,int ,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int inquiry_vpd_85(unsigned char *arr)
{
 int num = 0;
 const char *na1 = "https://www.kernel.org/config";
 const char *na2 = "http://www.kernel.org/log";
 int plen, olen;

 arr[num++] = 0x1;
 arr[num++] = 0x0;
 arr[num++] = 0x0;
 olen = strlen(na1);
 plen = olen + 1;
 if (plen % 4)
  plen = ((plen / 4) + 1) * 4;
 arr[num++] = plen;
 memcpy(arr + num, na1, olen);
 memset(arr + num + olen, 0, plen - olen);
 num += plen;

 arr[num++] = 0x4;
 arr[num++] = 0x0;
 arr[num++] = 0x0;
 olen = strlen(na2);
 plen = olen + 1;
 if (plen % 4)
  plen = ((plen / 4) + 1) * 4;
 arr[num++] = plen;
 memcpy(arr + num, na2, olen);
 memset(arr + num + olen, 0, plen - olen);
 num += plen;

 return num;
}

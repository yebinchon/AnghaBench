
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int DCC_STATUS_RX ;
 char __dcc_getchar () ;
 int __dcc_getstatus () ;

__attribute__((used)) static int hvc_dcc_get_chars(uint32_t vt, char *buf, int count)
{
 int i;

 for (i = 0; i < count; ++i)
  if (__dcc_getstatus() & DCC_STATUS_RX)
   buf[i] = __dcc_getchar();
  else
   break;

 return i;
}

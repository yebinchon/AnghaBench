
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hycapi_appl ;


 int CAPI_MAXAPPL ;
 int * hycapi_applications ;
 int memset (int *,int ,int) ;

int hycapi_init(void)
{
 int i;
 for (i = 0; i < CAPI_MAXAPPL; i++) {
  memset(&(hycapi_applications[i]), 0, sizeof(hycapi_appl));
 }
 return (0);
}

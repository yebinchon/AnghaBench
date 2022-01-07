
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {size_t vc_num; } ;


 int* inv_translate ;
 unsigned short** translations ;

unsigned short *set_translate(int m, struct vc_data *vc)
{
 inv_translate[vc->vc_num] = m;
 return translations[m];
}

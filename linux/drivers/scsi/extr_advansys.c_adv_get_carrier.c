
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adv_dvc_var {int * carrier; } ;
typedef int ADV_CARR_T ;


 int ADV_CARRIER_BUFSIZE ;
 int BUG_ON (int) ;

__attribute__((used)) static ADV_CARR_T *adv_get_carrier(struct adv_dvc_var *adv_dvc, u32 offset)
{
 int index;

 BUG_ON(offset > ADV_CARRIER_BUFSIZE);

 index = offset / sizeof(ADV_CARR_T);
 return &adv_dvc->carrier[index];
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sci_sas_address {scalar_t__ high; scalar_t__ low; } ;
typedef int s32 ;



__attribute__((used)) static s32 sci_sas_address_compare(
 struct sci_sas_address address_one,
 struct sci_sas_address address_two)
{
 if (address_one.high > address_two.high) {
  return 1;
 } else if (address_one.high < address_two.high) {
  return -1;
 } else if (address_one.low > address_two.low) {
  return 1;
 } else if (address_one.low < address_two.low) {
  return -1;
 }


 return 0;
}

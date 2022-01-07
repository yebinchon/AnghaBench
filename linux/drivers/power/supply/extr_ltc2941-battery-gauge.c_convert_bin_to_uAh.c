
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltc294x_info {int Qlsb; } ;



__attribute__((used)) static inline int convert_bin_to_uAh(
 const struct ltc294x_info *info, int Q)
{
 return ((Q * (info->Qlsb / 10))) / 100;
}

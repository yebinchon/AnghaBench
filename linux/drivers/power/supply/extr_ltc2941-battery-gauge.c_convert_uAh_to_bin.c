
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltc294x_info {int Qlsb; } ;


 int LTC294X_MAX_VALUE ;

__attribute__((used)) static inline int convert_uAh_to_bin(
 const struct ltc294x_info *info, int uAh)
{
 int Q;

 Q = (uAh * 100) / (info->Qlsb/10);
 return (Q < LTC294X_MAX_VALUE) ? Q : LTC294X_MAX_VALUE;
}

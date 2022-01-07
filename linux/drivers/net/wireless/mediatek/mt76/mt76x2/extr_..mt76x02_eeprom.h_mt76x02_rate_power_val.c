
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s8 ;


 int mt76x02_field_valid (int ) ;
 int mt76x02_sign_extend_optional (int ,int) ;

__attribute__((used)) static inline s8 mt76x02_rate_power_val(u8 val)
{
 if (!mt76x02_field_valid(val))
  return 0;

 return mt76x02_sign_extend_optional(val, 7);
}

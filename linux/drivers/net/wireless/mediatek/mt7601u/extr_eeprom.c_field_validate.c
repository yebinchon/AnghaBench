
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s8 ;


 int field_valid (int ) ;

__attribute__((used)) static s8
field_validate(u8 val)
{
 if (!field_valid(val))
  return 0;

 return val;
}

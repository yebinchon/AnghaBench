
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 size_t _BIP_ ;
 char const** _security_type_str ;

const char *security_type_str(u8 value)
{
 if (value <= _BIP_)
  return _security_type_str[value];
 return ((void*)0);
}

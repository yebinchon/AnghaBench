
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 char const** rfs ;

const char *zd_rf_name(u8 type)
{
 if (type & 0xf0)
  type = 0;
 return rfs[type];
}

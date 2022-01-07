
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TB_PROPERTY_KEY_SIZE ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static bool tb_property_key_valid(const char *key)
{
 return key && strlen(key) <= TB_PROPERTY_KEY_SIZE;
}

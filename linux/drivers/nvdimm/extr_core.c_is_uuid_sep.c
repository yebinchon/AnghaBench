
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool is_uuid_sep(char sep)
{
 if (sep == '\n' || sep == '-' || sep == ':' || sep == '\0')
  return 1;
 return 0;
}

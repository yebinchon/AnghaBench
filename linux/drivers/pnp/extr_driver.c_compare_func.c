
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ toupper (char const) ;

__attribute__((used)) static int compare_func(const char *ida, const char *idb)
{
 int i;


 for (i = 3; i < 7; i++) {
  if (ida[i] != 'X' &&
      idb[i] != 'X' && toupper(ida[i]) != toupper(idb[i]))
   return 0;
 }
 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long SCAN_WILD_CARD ;
 unsigned long long simple_strtoull (char*,char**,int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int check_set(unsigned long long *val, char *src)
{
 char *last;

 if (strcmp(src, "-") == 0) {
  *val = SCAN_WILD_CARD;
 } else {



  *val = simple_strtoull(src, &last, 0);
  if (*last != '\0')
   return 1;
 }
 return 0;
}

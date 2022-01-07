
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;



__attribute__((used)) static int is_indnum(u_char *ch)
{
 if ((*ch >= '0') && (*ch <= '9')) {
  *ch = *ch - '0';
  return 1;
 }
 return 0;
}

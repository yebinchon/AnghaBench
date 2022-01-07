
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int simple_strtoul (char*,char**,int) ;

__attribute__((used)) static int get_int_arg(char *ptr, int len, u_long *pv)
{
 char *end;

 *pv = simple_strtoul(ptr, &end, 10);
 return (end - ptr);
}

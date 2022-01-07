
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;


 int simple_strtoul (int ,char**,int) ;
 int skip_spaces (char*) ;

char *spk_s2uchar(char *start, char *dest)
{
 int val;


 val = simple_strtoul(skip_spaces(start), &start, 10);
 if (*start == ',')
  start++;
 *dest = (u_char)val;
 return start;
}

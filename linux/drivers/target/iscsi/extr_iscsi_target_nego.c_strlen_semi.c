
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int strlen_semi(char *buf)
{
 int i = 0;

 while (buf[i] != '\0') {
  if (buf[i] == ';')
   return i;
  i++;
 }

 return -1;
}

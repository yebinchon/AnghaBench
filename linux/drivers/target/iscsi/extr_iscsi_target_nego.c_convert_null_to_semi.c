
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void convert_null_to_semi(char *buf, int len)
{
 int i;

 for (i = 0; i < len; i++)
  if (buf[i] == '\0')
   buf[i] = ';';
}

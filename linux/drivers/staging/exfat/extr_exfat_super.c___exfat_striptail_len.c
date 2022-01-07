
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int __exfat_striptail_len(unsigned int len, const char *name)
{
 while (len && name[len - 1] == '.')
  len--;
 return len;
}

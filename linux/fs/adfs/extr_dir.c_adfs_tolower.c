
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned char adfs_tolower(unsigned char c)
{
 if (c >= 'A' && c <= 'Z')
  c += 'a' - 'A';
 return c;
}

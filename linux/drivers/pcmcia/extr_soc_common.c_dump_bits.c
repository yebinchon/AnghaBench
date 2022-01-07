
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bittbl {unsigned int mask; char const* name; } ;


 int sprintf (char*,char*,char const*) ;

__attribute__((used)) static void dump_bits(char **p, const char *prefix,
 unsigned int val, struct bittbl *bits, int sz)
{
 char *b = *p;
 int i;

 b += sprintf(b, "%-9s:", prefix);
 for (i = 0; i < sz; i++)
  if (val & bits[i].mask)
   b += sprintf(b, " %s", bits[i].name);
 *b++ = '\n';
 *p = b;
}

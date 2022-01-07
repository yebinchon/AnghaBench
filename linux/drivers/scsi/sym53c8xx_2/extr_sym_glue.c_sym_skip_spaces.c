
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (int) ;

__attribute__((used)) static int sym_skip_spaces(char *ptr, int len)
{
 int cnt, c;

 for (cnt = len; cnt > 0 && (c = *ptr++) && isspace(c); cnt--);

 return (len - cnt);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;

__attribute__((used)) static inline const char *strtail(const char *s, int n)
{
 int l = strlen(s);
 return (l > n) ? s + (l - n) : s;
}

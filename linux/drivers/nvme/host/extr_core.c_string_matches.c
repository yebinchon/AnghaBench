
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON_ONCE (int) ;
 scalar_t__ memcmp (char const*,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static bool string_matches(const char *idstr, const char *match, size_t len)
{
 size_t matchlen;

 if (!match)
  return 1;

 matchlen = strlen(match);
 WARN_ON_ONCE(matchlen > len);

 if (memcmp(idstr, match, matchlen))
  return 0;

 for (; matchlen < len; matchlen++)
  if (idstr[matchlen] != ' ')
   return 0;

 return 1;
}

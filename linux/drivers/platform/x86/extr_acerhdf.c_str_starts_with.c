
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long strlen (char const*) ;
 int strncmp (char const*,char const*,unsigned long) ;

__attribute__((used)) static int str_starts_with(const char *str, const char *start)
{
 unsigned long str_len = 0, start_len = 0;

 str_len = strlen(str);
 start_len = strlen(start);

 if (str_len >= start_len &&
   !strncmp(str, start, start_len))
  return 1;

 return 0;
}

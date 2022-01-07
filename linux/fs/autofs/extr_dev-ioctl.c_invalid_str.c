
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ memchr (char*,int ,size_t) ;

__attribute__((used)) static int invalid_str(char *str, size_t size)
{
 if (memchr(str, 0, size))
  return 0;
 return -EINVAL;
}

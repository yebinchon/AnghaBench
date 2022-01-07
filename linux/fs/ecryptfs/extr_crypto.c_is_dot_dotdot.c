
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool is_dot_dotdot(const char *name, size_t name_size)
{
 if (name_size == 1 && name[0] == '.')
  return 1;
 else if (name_size == 2 && name[0] == '.' && name[1] == '.')
  return 1;

 return 0;
}

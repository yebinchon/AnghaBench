
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int test_root(int a, int b)
{
 int num = b;

 while (a > num)
  num *= b;
 return num == a;
}

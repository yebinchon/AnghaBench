
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;



__attribute__((used)) static int rsi_compare(const void *a, const void *b)
{
 u16 _a = *(const u16 *)(a);
 u16 _b = *(const u16 *)(b);

 if (_a > _b)
  return -1;

 if (_a < _b)
  return 1;

 return 0;
}

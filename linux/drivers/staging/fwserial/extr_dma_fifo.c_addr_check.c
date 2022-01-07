
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool addr_check(unsigned int check, unsigned int lo, unsigned int hi)
{
 return check - (lo + 1) < (hi - 1) - lo;
}

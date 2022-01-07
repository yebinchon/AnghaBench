
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int smbb_vbat_weak_fn(unsigned int index)
{
 return 2100000 + index * 100000;
}

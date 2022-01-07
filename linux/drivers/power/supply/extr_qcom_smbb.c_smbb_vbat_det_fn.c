
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int smbb_vbat_det_fn(unsigned int index)
{
 return 3240000 + index * 20000;
}

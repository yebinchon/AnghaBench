
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;



__attribute__((used)) static inline void *reg_pair_to_ptr(u32 reg0, u32 reg1)
{
 return (void *)(unsigned long)(((u64)reg0 << 32) | reg1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int CDT0_RPC_MASK ;

__attribute__((used)) static inline u16 norm_pc(u16 pc)
{
 return pc & CDT0_RPC_MASK;
}

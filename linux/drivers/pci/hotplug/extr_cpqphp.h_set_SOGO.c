
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct controller {scalar_t__ hpc_reg; } ;


 scalar_t__ MISC ;
 int readw (scalar_t__) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static inline void set_SOGO(struct controller *ctrl)
{
 u16 misc;

 misc = readw(ctrl->hpc_reg + MISC);
 misc = (misc | 0x0001) & 0xFFFB;
 writew(misc, ctrl->hpc_reg + MISC);
}

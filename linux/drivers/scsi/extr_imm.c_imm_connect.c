
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned short base; scalar_t__ mode; } ;
typedef TYPE_1__ imm_struct ;


 scalar_t__ IMM_EPP_16 ;
 scalar_t__ IMM_EPP_32 ;
 scalar_t__ IMM_EPP_8 ;
 int imm_cpp (unsigned short,int) ;

__attribute__((used)) static inline int imm_connect(imm_struct *dev, int flag)
{
 unsigned short ppb = dev->base;

 imm_cpp(ppb, 0xe0);
 imm_cpp(ppb, 0x30);

 if ((dev->mode == IMM_EPP_8) ||
     (dev->mode == IMM_EPP_16) ||
     (dev->mode == IMM_EPP_32))
  return imm_cpp(ppb, 0x28);
 return imm_cpp(ppb, 0xe0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct amvdec_core {scalar_t__ esparser_base; } ;


 int writel_relaxed (scalar_t__,scalar_t__) ;

void amvdec_write_parser(struct amvdec_core *core, u32 reg, u32 val)
{
 writel_relaxed(val, core->esparser_base + reg);
}

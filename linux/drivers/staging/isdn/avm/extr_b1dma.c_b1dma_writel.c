
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ mbase; } ;
typedef TYPE_1__ avmcard ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void b1dma_writel(avmcard *card, u32 value, int off)
{
 writel(value, card->mbase + off);
}

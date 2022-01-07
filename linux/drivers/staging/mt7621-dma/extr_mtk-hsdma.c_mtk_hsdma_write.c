
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_hsdam_engine {scalar_t__ base; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void mtk_hsdma_write(struct mtk_hsdam_engine *hsdma,
       unsigned int reg, u32 val)
{
 writel(val, hsdma->base + reg);
}

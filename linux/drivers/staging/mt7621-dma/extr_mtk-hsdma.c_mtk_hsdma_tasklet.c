
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hsdam_engine {int dummy; } ;


 int mtk_hsdma_rx (struct mtk_hsdam_engine*) ;
 int mtk_hsdma_tx (struct mtk_hsdam_engine*) ;

__attribute__((used)) static void mtk_hsdma_tasklet(unsigned long arg)
{
 struct mtk_hsdam_engine *hsdma = (struct mtk_hsdam_engine *)arg;

 mtk_hsdma_rx(hsdma);
 mtk_hsdma_tx(hsdma);
}

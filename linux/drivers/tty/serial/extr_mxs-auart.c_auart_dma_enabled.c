
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_auart_port {int flags; } ;


 int MXS_AUART_DMA_ENABLED ;

__attribute__((used)) static inline bool auart_dma_enabled(struct mxs_auart_port *s)
{
 return s->flags & MXS_AUART_DMA_ENABLED;
}

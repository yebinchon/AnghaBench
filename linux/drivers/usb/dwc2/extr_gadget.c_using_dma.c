
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int g_dma; } ;
struct dwc2_hsotg {TYPE_1__ params; } ;



__attribute__((used)) static inline bool using_dma(struct dwc2_hsotg *hsotg)
{
 return hsotg->params.g_dma;
}

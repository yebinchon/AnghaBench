
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int name; } ;
struct omap_ep {TYPE_1__ ep; } ;


 int ERR (char*,int ,int,int ) ;

__attribute__((used)) static void dma_error(int lch, u16 ch_status, void *data)
{
 struct omap_ep *ep = data;



 ERR("%s dma error, lch %d status %02x\n", ep->ep.name, lch, ch_status);


}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct musb* musb; } ;
struct tusb_omap_dma {struct tusb_dma_data* dma_pool; scalar_t__ multichannel; TYPE_1__ controller; } ;
struct tusb_dma_data {int dmareq; int chan; } ;
struct musb {int controller; } ;


 scalar_t__ IS_ERR (int ) ;
 int MAX_DMAREQ ;
 int PTR_ERR (int ) ;
 int dev_err (int ,char*,char*) ;
 int dma_release_channel (int ) ;
 int dma_request_chan (int ,char*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int tusb_omap_allocate_dma_pool(struct tusb_omap_dma *tusb_dma)
{
 struct musb *musb = tusb_dma->controller.musb;
 int i;
 int ret = 0;

 for (i = 0; i < MAX_DMAREQ; i++) {
  struct tusb_dma_data *dma_data = &tusb_dma->dma_pool[i];






  if (i == 0 || tusb_dma->multichannel) {
   char ch_name[8];

   sprintf(ch_name, "dmareq%d", i);
   dma_data->chan = dma_request_chan(musb->controller,
         ch_name);
   if (IS_ERR(dma_data->chan)) {
    dev_err(musb->controller,
     "Failed to request %s\n", ch_name);
    ret = PTR_ERR(dma_data->chan);
    goto dma_error;
   }

   dma_data->dmareq = i;
  } else {
   dma_data->dmareq = -1;
  }
 }

 return 0;

dma_error:
 for (; i >= 0; i--) {
  struct tusb_dma_data *dma_data = &tusb_dma->dma_pool[i];

  if (dma_data->dmareq >= 0)
   dma_release_channel(dma_data->chan);
 }

 return ret;
}

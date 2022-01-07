
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ring_desc {int bd_dma; int list; struct buf_desc* bd; } ;
struct pic32_sqi {int bd_dma; struct ring_desc* ring; int bd_list_free; int bd_list_used; scalar_t__ bd; TYPE_1__* master; } ;
struct buf_desc {int bd_nextp; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int PESQI_BD_COUNT ;
 int dev_err (int *,char*) ;
 scalar_t__ dma_alloc_coherent (int *,int,int*,int ) ;
 int dma_free_coherent (int *,int,scalar_t__,int) ;
 struct ring_desc* kcalloc (int,int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static int ring_desc_ring_alloc(struct pic32_sqi *sqi)
{
 struct ring_desc *rdesc;
 struct buf_desc *bd;
 int i;


 sqi->bd = dma_alloc_coherent(&sqi->master->dev,
         sizeof(*bd) * PESQI_BD_COUNT,
         &sqi->bd_dma, GFP_KERNEL);
 if (!sqi->bd) {
  dev_err(&sqi->master->dev, "failed allocating dma buffer\n");
  return -ENOMEM;
 }


 sqi->ring = kcalloc(PESQI_BD_COUNT, sizeof(*rdesc), GFP_KERNEL);
 if (!sqi->ring) {
  dma_free_coherent(&sqi->master->dev,
      sizeof(*bd) * PESQI_BD_COUNT,
      sqi->bd, sqi->bd_dma);
  return -ENOMEM;
 }

 bd = (struct buf_desc *)sqi->bd;

 INIT_LIST_HEAD(&sqi->bd_list_free);
 INIT_LIST_HEAD(&sqi->bd_list_used);


 for (i = 0, rdesc = sqi->ring; i < PESQI_BD_COUNT; i++, rdesc++) {
  INIT_LIST_HEAD(&rdesc->list);
  rdesc->bd = &bd[i];
  rdesc->bd_dma = sqi->bd_dma + (void *)&bd[i] - (void *)bd;
  list_add_tail(&rdesc->list, &sqi->bd_list_free);
 }


 for (i = 0, rdesc = sqi->ring; i < PESQI_BD_COUNT - 1; i++)
  bd[i].bd_nextp = rdesc[i + 1].bd_dma;
 bd[PESQI_BD_COUNT - 1].bd_nextp = 0;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pnp_protocol {int number; int dev; } ;
struct pnp_id {int dummy; } ;
struct TYPE_2__ {int coherent_dma_mask; int * dma_mask; int * parent; } ;
struct pnp_card {int number; TYPE_1__ dev; struct pnp_protocol* protocol; } ;


 int DMA_BIT_MASK (int) ;
 int GFP_KERNEL ;
 int dev_set_name (TYPE_1__*,char*,int ,int) ;
 int kfree (struct pnp_card*) ;
 struct pnp_card* kzalloc (int,int ) ;
 struct pnp_id* pnp_add_card_id (struct pnp_card*,char*) ;

struct pnp_card *pnp_alloc_card(struct pnp_protocol *protocol, int id, char *pnpid)
{
 struct pnp_card *card;
 struct pnp_id *dev_id;

 card = kzalloc(sizeof(struct pnp_card), GFP_KERNEL);
 if (!card)
  return ((void*)0);

 card->protocol = protocol;
 card->number = id;

 card->dev.parent = &card->protocol->dev;
 dev_set_name(&card->dev, "%02x:%02x", card->protocol->number, card->number);

 card->dev.coherent_dma_mask = DMA_BIT_MASK(24);
 card->dev.dma_mask = &card->dev.coherent_dma_mask;

 dev_id = pnp_add_card_id(card, pnpid);
 if (!dev_id) {
  kfree(card);
  return ((void*)0);
 }

 return card;
}

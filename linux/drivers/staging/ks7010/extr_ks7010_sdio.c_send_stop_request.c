
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sdio_func {int dummy; } ;
struct ks_sdio_card {int priv; } ;
struct TYPE_2__ {void* event; void* size; } ;
struct hostif_stop_request {TYPE_1__ header; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 size_t HIF_STOP_REQ ;
 void* cpu_to_le16 (size_t) ;
 int hif_align_size (int) ;
 int kfree (struct hostif_stop_request*) ;
 struct hostif_stop_request* kzalloc (int ,int ) ;
 int sdio_claim_host (struct sdio_func*) ;
 struct ks_sdio_card* sdio_get_drvdata (struct sdio_func*) ;
 int sdio_release_host (struct sdio_func*) ;
 int write_to_device (int ,int *,int ) ;

__attribute__((used)) static int send_stop_request(struct sdio_func *func)
{
 struct hostif_stop_request *pp;
 struct ks_sdio_card *card;
 size_t size;

 card = sdio_get_drvdata(func);

 pp = kzalloc(hif_align_size(sizeof(*pp)), GFP_KERNEL);
 if (!pp)
  return -ENOMEM;

 size = sizeof(*pp) - sizeof(pp->header.size);
 pp->header.size = cpu_to_le16(size);
 pp->header.event = cpu_to_le16(HIF_STOP_REQ);

 sdio_claim_host(func);
 write_to_device(card->priv, (u8 *)pp, hif_align_size(sizeof(*pp)));
 sdio_release_host(func);

 kfree(pp);
 return 0;
}

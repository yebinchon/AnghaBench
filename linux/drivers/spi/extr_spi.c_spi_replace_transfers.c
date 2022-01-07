
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* prev; } ;
struct spi_transfer {int cs_change; scalar_t__ delay_usecs; TYPE_3__ transfer_list; } ;
struct spi_replaced_transfers {size_t inserted; TYPE_2__* replaced_after; struct spi_transfer* inserted_transfers; int replaced_transfers; struct spi_transfer* extradata; int release; } ;
struct spi_message {TYPE_1__* spi; int transfers; } ;
typedef int spi_replaced_release_t ;
typedef int gfp_t ;
struct TYPE_6__ {int * next; } ;
struct TYPE_5__ {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 struct spi_replaced_transfers* ERR_PTR (int ) ;
 int INIT_LIST_HEAD (int *) ;
 int __spi_replace_transfers_release ;
 int dev_err (int *,char*) ;
 int inserted_transfers ;
 int list_add (TYPE_3__*,TYPE_2__*) ;
 int list_move_tail (int *,int *) ;
 int list_splice (int *,TYPE_2__*) ;
 int memcpy (struct spi_transfer*,struct spi_transfer*,int) ;
 int spi_res_add (struct spi_message*,struct spi_replaced_transfers*) ;
 struct spi_replaced_transfers* spi_res_alloc (TYPE_1__*,int ,scalar_t__,int ) ;
 int spi_res_free (struct spi_replaced_transfers*) ;
 scalar_t__ struct_size (struct spi_replaced_transfers*,int ,size_t) ;

struct spi_replaced_transfers *spi_replace_transfers(
 struct spi_message *msg,
 struct spi_transfer *xfer_first,
 size_t remove,
 size_t insert,
 spi_replaced_release_t release,
 size_t extradatasize,
 gfp_t gfp)
{
 struct spi_replaced_transfers *rxfer;
 struct spi_transfer *xfer;
 size_t i;


 rxfer = spi_res_alloc(msg->spi, __spi_replace_transfers_release,
         struct_size(rxfer, inserted_transfers, insert)
         + extradatasize,
         gfp);
 if (!rxfer)
  return ERR_PTR(-ENOMEM);


 rxfer->release = release;


 if (extradatasize)
  rxfer->extradata =
   &rxfer->inserted_transfers[insert];


 INIT_LIST_HEAD(&rxfer->replaced_transfers);




 rxfer->replaced_after = xfer_first->transfer_list.prev;


 for (i = 0; i < remove; i++) {




  if (rxfer->replaced_after->next == &msg->transfers) {
   dev_err(&msg->spi->dev,
    "requested to remove more spi_transfers than are available\n");

   list_splice(&rxfer->replaced_transfers,
        rxfer->replaced_after);


   spi_res_free(rxfer);


   return ERR_PTR(-EINVAL);
  }




  list_move_tail(rxfer->replaced_after->next,
          &rxfer->replaced_transfers);
 }




 for (i = 0; i < insert; i++) {

  xfer = &rxfer->inserted_transfers[insert - 1 - i];


  memcpy(xfer, xfer_first, sizeof(*xfer));


  list_add(&xfer->transfer_list, rxfer->replaced_after);


  if (i) {
   xfer->cs_change = 0;
   xfer->delay_usecs = 0;
  }
 }


 rxfer->inserted = insert;


 spi_res_add(msg, rxfer);

 return rxfer;
}

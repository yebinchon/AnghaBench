
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_replaced_transfers {size_t inserted; TYPE_1__* inserted_transfers; int replaced_after; int replaced_transfers; int (* release ) (struct spi_controller*,struct spi_message*,void*) ;} ;
struct spi_message {int dummy; } ;
struct spi_controller {int dummy; } ;
struct TYPE_2__ {int transfer_list; } ;


 int list_del (int *) ;
 int list_splice (int *,int ) ;
 int stub1 (struct spi_controller*,struct spi_message*,void*) ;

__attribute__((used)) static void __spi_replace_transfers_release(struct spi_controller *ctlr,
         struct spi_message *msg,
         void *res)
{
 struct spi_replaced_transfers *rxfer = res;
 size_t i;


 if (rxfer->release)
  rxfer->release(ctlr, msg, res);


 list_splice(&rxfer->replaced_transfers, rxfer->replaced_after);


 for (i = 0; i < rxfer->inserted; i++)
  list_del(&rxfer->inserted_transfers[i].transfer_list);
}

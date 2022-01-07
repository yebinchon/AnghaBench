
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int bus_num; int dev; int list; scalar_t__ queued; } ;


 int __unregister ;
 int board_lock ;
 int dev_err (int *,char*) ;
 int device_for_each_child (int *,int *,int ) ;
 int device_unregister (int *) ;
 struct spi_controller* idr_find (int *,int) ;
 int idr_remove (int *,int) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ spi_destroy_queue (struct spi_controller*) ;
 int spi_master_idr ;

void spi_unregister_controller(struct spi_controller *ctlr)
{
 struct spi_controller *found;
 int id = ctlr->bus_num;


 mutex_lock(&board_lock);
 found = idr_find(&spi_master_idr, id);
 mutex_unlock(&board_lock);
 if (ctlr->queued) {
  if (spi_destroy_queue(ctlr))
   dev_err(&ctlr->dev, "queue remove failed\n");
 }
 mutex_lock(&board_lock);
 list_del(&ctlr->list);
 mutex_unlock(&board_lock);

 device_for_each_child(&ctlr->dev, ((void*)0), __unregister);
 device_unregister(&ctlr->dev);

 mutex_lock(&board_lock);
 if (found == ctlr)
  idr_remove(&spi_master_idr, id);
 mutex_unlock(&board_lock);
}

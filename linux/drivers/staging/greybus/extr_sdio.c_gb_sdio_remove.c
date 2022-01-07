
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int dummy; } ;
struct gbphy_device {int dummy; } ;
struct gb_sdio_host {int removed; int mrq_workqueue; int lock; struct mmc_host* mmc; struct gb_connection* connection; } ;
struct gb_connection {int dummy; } ;


 int destroy_workqueue (int ) ;
 int flush_workqueue (int ) ;
 int gb_connection_destroy (struct gb_connection*) ;
 int gb_connection_disable (struct gb_connection*) ;
 int gb_connection_disable_rx (struct gb_connection*) ;
 int gb_connection_set_data (struct gb_connection*,int *) ;
 struct gb_sdio_host* gb_gbphy_get_data (struct gbphy_device*) ;
 int gbphy_runtime_get_noresume (struct gbphy_device*) ;
 int gbphy_runtime_get_sync (struct gbphy_device*) ;
 int mmc_free_host (struct mmc_host*) ;
 int mmc_remove_host (struct mmc_host*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void gb_sdio_remove(struct gbphy_device *gbphy_dev)
{
 struct gb_sdio_host *host = gb_gbphy_get_data(gbphy_dev);
 struct gb_connection *connection = host->connection;
 struct mmc_host *mmc;
 int ret;

 ret = gbphy_runtime_get_sync(gbphy_dev);
 if (ret)
  gbphy_runtime_get_noresume(gbphy_dev);

 mutex_lock(&host->lock);
 host->removed = 1;
 mmc = host->mmc;
 gb_connection_set_data(connection, ((void*)0));
 mutex_unlock(&host->lock);

 flush_workqueue(host->mrq_workqueue);
 destroy_workqueue(host->mrq_workqueue);
 gb_connection_disable_rx(connection);
 mmc_remove_host(mmc);
 gb_connection_disable(connection);
 gb_connection_destroy(connection);
 mmc_free_host(mmc);
}

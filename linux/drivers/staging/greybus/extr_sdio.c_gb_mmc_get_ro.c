
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int dummy; } ;
struct gb_sdio_host {int read_only; int lock; scalar_t__ removed; } ;


 int ESHUTDOWN ;
 struct gb_sdio_host* mmc_priv (struct mmc_host*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int gb_mmc_get_ro(struct mmc_host *mmc)
{
 struct gb_sdio_host *host = mmc_priv(mmc);

 mutex_lock(&host->lock);
 if (host->removed) {
  mutex_unlock(&host->lock);
  return -ESHUTDOWN;
 }
 mutex_unlock(&host->lock);

 return host->read_only;
}

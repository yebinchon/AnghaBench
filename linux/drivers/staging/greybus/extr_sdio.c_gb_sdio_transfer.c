
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct mmc_data {int blocks; size_t blksz; int flags; size_t bytes_xfered; int error; TYPE_1__* mrq; } ;
struct gb_sdio_host {int xfer_stop; int data_max; int xfer; } ;
typedef size_t off_t ;
struct TYPE_2__ {int cmd; } ;


 int EINTR ;
 int ETIMEDOUT ;
 int MMC_DATA_READ ;
 int _gb_sdio_recv (struct gb_sdio_host*,struct mmc_data*,size_t,size_t,size_t) ;
 int _gb_sdio_send (struct gb_sdio_host*,struct mmc_data*,size_t,size_t,size_t) ;
 size_t min (size_t,int ) ;
 scalar_t__ single_op (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int gb_sdio_transfer(struct gb_sdio_host *host, struct mmc_data *data)
{
 size_t left, len;
 off_t skip = 0;
 int ret = 0;
 u16 nblocks;

 if (single_op(data->mrq->cmd) && data->blocks > 1) {
  ret = -ETIMEDOUT;
  goto out;
 }

 left = data->blksz * data->blocks;

 while (left) {

  spin_lock(&host->xfer);
  if (host->xfer_stop) {
   host->xfer_stop = 0;
   spin_unlock(&host->xfer);
   ret = -EINTR;
   goto out;
  }
  spin_unlock(&host->xfer);
  len = min(left, host->data_max);
  nblocks = len / data->blksz;
  len = nblocks * data->blksz;

  if (data->flags & MMC_DATA_READ) {
   ret = _gb_sdio_recv(host, data, len, nblocks, skip);
   if (ret < 0)
    goto out;
  } else {
   ret = _gb_sdio_send(host, data, len, nblocks, skip);
   if (ret < 0)
    goto out;
  }
  data->bytes_xfered += len;
  left -= len;
  skip += len;
 }

out:
 data->error = ret;
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_request {struct mmc_command* cmd; } ;
struct mmc_host {int dummy; } ;
struct mmc_command {scalar_t__ opcode; int error; } ;
struct gb_sdio_host {int xfer_stop; int lock; struct mmc_request* mrq; int mrqwork; int mrq_workqueue; int card_present; scalar_t__ removed; int xfer; } ;


 int ENOMEDIUM ;
 int ESHUTDOWN ;
 scalar_t__ MMC_STOP_TRANSMISSION ;
 int WARN_ON (struct mmc_request*) ;
 struct gb_sdio_host* mmc_priv (struct mmc_host*) ;
 int mmc_request_done (struct mmc_host*,struct mmc_request*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_work (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void gb_mmc_request(struct mmc_host *mmc, struct mmc_request *mrq)
{
 struct gb_sdio_host *host = mmc_priv(mmc);
 struct mmc_command *cmd = mrq->cmd;


 if (cmd->opcode == MMC_STOP_TRANSMISSION) {
  spin_lock(&host->xfer);
  host->xfer_stop = 1;
  spin_unlock(&host->xfer);
 }

 mutex_lock(&host->lock);

 WARN_ON(host->mrq);
 host->mrq = mrq;

 if (host->removed) {
  mrq->cmd->error = -ESHUTDOWN;
  goto out;
 }
 if (!host->card_present) {
  mrq->cmd->error = -ENOMEDIUM;
  goto out;
 }

 queue_work(host->mrq_workqueue, &host->mrqwork);

 mutex_unlock(&host->lock);
 return;

out:
 host->mrq = ((void*)0);
 mutex_unlock(&host->lock);
 mmc_request_done(mmc, mrq);
}

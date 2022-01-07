
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct gb_sdio_host {int card_present; int read_only; TYPE_1__* mmc; } ;
struct TYPE_3__ {int caps; } ;


 int GB_SDIO_CARD_INSERTED ;
 int GB_SDIO_CARD_REMOVED ;
 int GB_SDIO_WP ;
 int MMC_CAP_NONREMOVABLE ;
 int dev_info (int ,char*,char*) ;
 int mmc_detect_change (TYPE_1__*,int ) ;
 int mmc_dev (TYPE_1__*) ;

__attribute__((used)) static int _gb_sdio_process_events(struct gb_sdio_host *host, u8 event)
{
 u8 state_changed = 0;

 if (event & GB_SDIO_CARD_INSERTED) {
  if (host->mmc->caps & MMC_CAP_NONREMOVABLE)
   return 0;
  if (host->card_present)
   return 0;
  host->card_present = 1;
  state_changed = 1;
 }

 if (event & GB_SDIO_CARD_REMOVED) {
  if (host->mmc->caps & MMC_CAP_NONREMOVABLE)
   return 0;
  if (!(host->card_present))
   return 0;
  host->card_present = 0;
  state_changed = 1;
 }

 if (event & GB_SDIO_WP)
  host->read_only = 1;

 if (state_changed) {
  dev_info(mmc_dev(host->mmc), "card %s now event\n",
    (host->card_present ? "inserted" : "removed"));
  mmc_detect_change(host->mmc, 0);
 }

 return 0;
}

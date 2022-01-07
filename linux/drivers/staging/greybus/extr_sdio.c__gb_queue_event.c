
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gb_sdio_host {int queued_events; } ;


 int GB_SDIO_CARD_INSERTED ;
 int GB_SDIO_CARD_REMOVED ;

__attribute__((used)) static void _gb_queue_event(struct gb_sdio_host *host, u8 event)
{
 if (event & GB_SDIO_CARD_INSERTED)
  host->queued_events &= ~GB_SDIO_CARD_REMOVED;
 else if (event & GB_SDIO_CARD_REMOVED)
  host->queued_events &= ~GB_SDIO_CARD_INSERTED;

 host->queued_events |= event;
}

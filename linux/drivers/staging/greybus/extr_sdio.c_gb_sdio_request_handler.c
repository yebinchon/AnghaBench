
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct gb_sdio_host {scalar_t__ removed; int mmc; } ;
struct gb_sdio_event_request {scalar_t__ event; } ;
struct gb_operation {scalar_t__ type; struct gb_message* request; int connection; } ;
struct gb_message {int payload_size; struct gb_sdio_event_request* payload; } ;


 int EINVAL ;
 scalar_t__ GB_SDIO_TYPE_EVENT ;
 int _gb_queue_event (struct gb_sdio_host*,scalar_t__) ;
 int _gb_sdio_process_events (struct gb_sdio_host*,scalar_t__) ;
 int dev_err (int ,char*,int,...) ;
 struct gb_sdio_host* gb_connection_get_data (int ) ;
 int mmc_dev (int ) ;

__attribute__((used)) static int gb_sdio_request_handler(struct gb_operation *op)
{
 struct gb_sdio_host *host = gb_connection_get_data(op->connection);
 struct gb_message *request;
 struct gb_sdio_event_request *payload;
 u8 type = op->type;
 int ret = 0;
 u8 event;

 if (type != GB_SDIO_TYPE_EVENT) {
  dev_err(mmc_dev(host->mmc),
   "unsupported unsolicited event: %u\n", type);
  return -EINVAL;
 }

 request = op->request;

 if (request->payload_size < sizeof(*payload)) {
  dev_err(mmc_dev(host->mmc), "wrong event size received (%zu < %zu)\n",
   request->payload_size, sizeof(*payload));
  return -EINVAL;
 }

 payload = request->payload;
 event = payload->event;

 if (host->removed)
  _gb_queue_event(host, event);
 else
  ret = _gb_sdio_process_events(host, event);

 return ret;
}

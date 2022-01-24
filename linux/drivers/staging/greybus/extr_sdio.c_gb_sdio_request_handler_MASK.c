#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u8 ;
struct gb_sdio_host {scalar_t__ removed; int /*<<< orphan*/  mmc; } ;
struct gb_sdio_event_request {scalar_t__ event; } ;
struct gb_operation {scalar_t__ type; struct gb_message* request; int /*<<< orphan*/  connection; } ;
struct gb_message {int payload_size; struct gb_sdio_event_request* payload; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ GB_SDIO_TYPE_EVENT ; 
 int /*<<< orphan*/  FUNC0 (struct gb_sdio_host*,scalar_t__) ; 
 int FUNC1 (struct gb_sdio_host*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 struct gb_sdio_host* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct gb_operation *op)
{
	struct gb_sdio_host *host = FUNC3(op->connection);
	struct gb_message *request;
	struct gb_sdio_event_request *payload;
	u8 type = op->type;
	int ret =  0;
	u8 event;

	if (type != GB_SDIO_TYPE_EVENT) {
		FUNC2(FUNC4(host->mmc),
			"unsupported unsolicited event: %u\n", type);
		return -EINVAL;
	}

	request = op->request;

	if (request->payload_size < sizeof(*payload)) {
		FUNC2(FUNC4(host->mmc), "wrong event size received (%zu < %zu)\n",
			request->payload_size, sizeof(*payload));
		return -EINVAL;
	}

	payload = request->payload;
	event = payload->event;

	if (host->removed)
		FUNC0(host, event);
	else
		ret = FUNC1(host, event);

	return ret;
}
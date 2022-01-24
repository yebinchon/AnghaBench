#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct gb_operation {TYPE_2__* response; TYPE_1__* request; struct gb_connection* connection; } ;
struct gb_fw_download_fetch_firmware_response {int /*<<< orphan*/  data; } ;
struct gb_fw_download_fetch_firmware_request {int /*<<< orphan*/  firmware_id; int /*<<< orphan*/  size; int /*<<< orphan*/  offset; } ;
struct gb_connection {int dummy; } ;
struct fw_request {int /*<<< orphan*/  dwork; struct firmware* fw; scalar_t__ disabled; } ;
struct fw_download {int /*<<< orphan*/  parent; } ;
struct firmware {unsigned int size; scalar_t__ data; } ;
struct TYPE_4__ {struct gb_fw_download_fetch_firmware_response* payload; } ;
struct TYPE_3__ {int payload_size; struct gb_fw_download_fetch_firmware_request* payload; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NEXT_REQ_TIMEOUT_J ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (struct fw_request*) ; 
 struct fw_download* FUNC4 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC5 (struct gb_operation*,int,int /*<<< orphan*/ ) ; 
 struct fw_request* FUNC6 (struct fw_download*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct fw_request*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct gb_operation *op)
{
	struct gb_connection *connection = op->connection;
	struct fw_download *fw_download = FUNC4(connection);
	struct gb_fw_download_fetch_firmware_request *request;
	struct gb_fw_download_fetch_firmware_response *response;
	struct fw_request *fw_req;
	const struct firmware *fw;
	unsigned int offset, size;
	u8 firmware_id;
	int ret = 0;

	if (op->request->payload_size != sizeof(*request)) {
		FUNC2(fw_download->parent,
			"Illegal size of fetch firmware request (%zu %zu)\n",
			op->request->payload_size, sizeof(*request));
		return -EINVAL;
	}

	request = op->request->payload;
	offset = FUNC7(request->offset);
	size = FUNC7(request->size);
	firmware_id = request->firmware_id;

	fw_req = FUNC6(fw_download, firmware_id);
	if (!fw_req) {
		FUNC2(fw_download->parent,
			"firmware not available for id: %02u\n", firmware_id);
		return -EINVAL;
	}

	/* Make sure work handler isn't running in parallel */
	FUNC0(&fw_req->dwork);

	/* We timed-out before reaching here ? */
	if (fw_req->disabled) {
		ret = -ETIMEDOUT;
		goto put_fw;
	}

	/*
	 * Firmware download must finish within a limited time interval. If it
	 * doesn't, then we might have a buggy Module on the other side. Abort
	 * download.
	 */
	ret = FUNC3(fw_req);
	if (ret)
		goto put_fw;

	fw = fw_req->fw;

	if (offset >= fw->size || size > fw->size - offset) {
		FUNC2(fw_download->parent,
			"bad fetch firmware request (offs = %u, size = %u)\n",
			offset, size);
		ret = -EINVAL;
		goto put_fw;
	}

	if (!FUNC5(op, sizeof(*response) + size,
					 GFP_KERNEL)) {
		FUNC2(fw_download->parent,
			"error allocating fetch firmware response\n");
		ret = -ENOMEM;
		goto put_fw;
	}

	response = op->response->payload;
	FUNC8(response->data, fw->data + offset, size);

	FUNC1(fw_download->parent,
		"responding with firmware (offs = %u, size = %u)\n", offset,
		size);

	/* Refresh timeout */
	FUNC10(&fw_req->dwork, NEXT_REQ_TIMEOUT_J);

put_fw:
	FUNC9(fw_req);

	return ret;
}
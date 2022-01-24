#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct gb_operation {TYPE_1__* request; struct gb_connection* connection; } ;
struct gb_fw_download_release_firmware_request {int /*<<< orphan*/  firmware_id; } ;
struct gb_connection {int dummy; } ;
struct fw_request {int /*<<< orphan*/  dwork; } ;
struct fw_download {int /*<<< orphan*/  parent; } ;
struct TYPE_2__ {int payload_size; struct gb_fw_download_release_firmware_request* payload; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct fw_download*,struct fw_request*) ; 
 struct fw_download* FUNC4 (struct gb_connection*) ; 
 struct fw_request* FUNC5 (struct fw_download*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fw_request*) ; 

__attribute__((used)) static int FUNC7(struct gb_operation *op)
{
	struct gb_connection *connection = op->connection;
	struct fw_download *fw_download = FUNC4(connection);
	struct gb_fw_download_release_firmware_request *request;
	struct fw_request *fw_req;
	u8 firmware_id;

	if (op->request->payload_size != sizeof(*request)) {
		FUNC2(fw_download->parent,
			"Illegal size of release firmware request (%zu %zu)\n",
			op->request->payload_size, sizeof(*request));
		return -EINVAL;
	}

	request = op->request->payload;
	firmware_id = request->firmware_id;

	fw_req = FUNC5(fw_download, firmware_id);
	if (!fw_req) {
		FUNC2(fw_download->parent,
			"firmware not available for id: %02u\n", firmware_id);
		return -EINVAL;
	}

	FUNC0(&fw_req->dwork);

	FUNC3(fw_download, fw_req);
	FUNC6(fw_req);

	FUNC1(fw_download->parent, "release firmware\n");

	return 0;
}
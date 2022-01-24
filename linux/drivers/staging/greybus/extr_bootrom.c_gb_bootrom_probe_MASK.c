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
struct greybus_descriptor_cport {scalar_t__ protocol_id; int /*<<< orphan*/  id; } ;
struct greybus_bundle_id {int dummy; } ;
struct gb_connection {TYPE_1__* bundle; } ;
struct gb_bundle {int num_cports; int /*<<< orphan*/  dev; struct greybus_descriptor_cport* cport_desc; } ;
struct gb_bootrom {int /*<<< orphan*/  dwork; int /*<<< orphan*/  mutex; struct gb_connection* connection; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GB_BOOTROM_TYPE_AP_READY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ GREYBUS_PROTOCOL_BOOTROM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct gb_connection*) ; 
 int /*<<< orphan*/  NEXT_REQ_FIRMWARE_SIZE ; 
 int /*<<< orphan*/  NEXT_REQ_TIMEOUT_MS ; 
 int FUNC2 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_bootrom*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct gb_bootrom*) ; 
 int FUNC7 (struct gb_bootrom*) ; 
 int /*<<< orphan*/  gb_bootrom_request_handler ; 
 int /*<<< orphan*/  FUNC8 (struct gb_bootrom*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gb_bootrom_timedout ; 
 struct gb_connection* FUNC9 (struct gb_bundle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC11 (struct gb_connection*) ; 
 int FUNC12 (struct gb_connection*) ; 
 int FUNC13 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC14 (struct gb_connection*,struct gb_bootrom*) ; 
 int FUNC15 (struct gb_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct gb_bundle*,struct gb_bootrom*) ; 
 int /*<<< orphan*/  FUNC17 (struct gb_bootrom*) ; 
 struct gb_bootrom* FUNC18 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(struct gb_bundle *bundle,
			    const struct greybus_bundle_id *id)
{
	struct greybus_descriptor_cport *cport_desc;
	struct gb_connection *connection;
	struct gb_bootrom *bootrom;
	int ret;

	if (bundle->num_cports != 1)
		return -ENODEV;

	cport_desc = &bundle->cport_desc[0];
	if (cport_desc->protocol_id != GREYBUS_PROTOCOL_BOOTROM)
		return -ENODEV;

	bootrom = FUNC18(sizeof(*bootrom), GFP_KERNEL);
	if (!bootrom)
		return -ENOMEM;

	connection = FUNC9(bundle,
					  FUNC19(cport_desc->id),
					  gb_bootrom_request_handler);
	if (FUNC1(connection)) {
		ret = FUNC2(connection);
		goto err_free_bootrom;
	}

	FUNC14(connection, bootrom);

	bootrom->connection = connection;

	FUNC20(&bootrom->mutex);
	FUNC0(&bootrom->dwork, gb_bootrom_timedout);
	FUNC16(bundle, bootrom);

	ret = FUNC13(connection);
	if (ret)
		goto err_connection_destroy;

	ret = FUNC7(bootrom);
	if (ret)
		goto err_connection_disable;

	FUNC3(bootrom);

	ret = FUNC12(connection);
	if (ret)
		goto err_connection_disable;

	/* Refresh timeout */
	FUNC8(bootrom, NEXT_REQ_FIRMWARE_SIZE,
			       NEXT_REQ_TIMEOUT_MS);

	/* Tell bootrom we're ready. */
	ret = FUNC15(connection, GB_BOOTROM_TYPE_AP_READY, NULL, 0,
				NULL, 0);
	if (ret) {
		FUNC5(&connection->bundle->dev,
			"failed to send AP READY: %d\n", ret);
		goto err_cancel_timeout;
	}

	FUNC4(&bundle->dev, "AP_READY sent\n");

	return 0;

err_cancel_timeout:
	FUNC6(bootrom);
err_connection_disable:
	FUNC11(connection);
err_connection_destroy:
	FUNC10(connection);
err_free_bootrom:
	FUNC17(bootrom);

	return ret;
}
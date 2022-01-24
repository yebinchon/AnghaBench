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
struct gb_raw {int /*<<< orphan*/  cdev; struct gb_connection* device; int /*<<< orphan*/  dev; struct gb_connection* connection; int /*<<< orphan*/  list_lock; int /*<<< orphan*/  list; } ;
struct gb_connection {TYPE_1__* bundle; } ;
struct gb_bundle {int num_cports; struct greybus_descriptor_cport* cport_desc; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ GREYBUS_PROTOCOL_RAW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct gb_connection*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct gb_connection* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct gb_raw*,char*,int) ; 
 struct gb_connection* FUNC8 (struct gb_bundle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC10 (struct gb_connection*) ; 
 int FUNC11 (struct gb_connection*) ; 
 int /*<<< orphan*/  gb_raw_request_handler ; 
 int /*<<< orphan*/  FUNC12 (struct gb_bundle*,struct gb_raw*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (struct gb_raw*) ; 
 struct gb_raw* FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  minors ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  raw_class ; 
 int /*<<< orphan*/  raw_fops ; 
 int /*<<< orphan*/  raw_major ; 

__attribute__((used)) static int FUNC19(struct gb_bundle *bundle,
			const struct greybus_bundle_id *id)
{
	struct greybus_descriptor_cport *cport_desc;
	struct gb_connection *connection;
	struct gb_raw *raw;
	int retval;
	int minor;

	if (bundle->num_cports != 1)
		return -ENODEV;

	cport_desc = &bundle->cport_desc[0];
	if (cport_desc->protocol_id != GREYBUS_PROTOCOL_RAW)
		return -ENODEV;

	raw = FUNC16(sizeof(*raw), GFP_KERNEL);
	if (!raw)
		return -ENOMEM;

	connection = FUNC8(bundle, FUNC17(cport_desc->id),
					  gb_raw_request_handler);
	if (FUNC1(connection)) {
		retval = FUNC3(connection);
		goto error_free;
	}

	FUNC0(&raw->list);
	FUNC18(&raw->list_lock);

	raw->connection = connection;
	FUNC12(bundle, raw);

	minor = FUNC13(&minors, 0, 0, GFP_KERNEL);
	if (minor < 0) {
		retval = minor;
		goto error_connection_destroy;
	}

	raw->dev = FUNC2(raw_major, minor);
	FUNC6(&raw->cdev, &raw_fops);

	retval = FUNC11(connection);
	if (retval)
		goto error_remove_ida;

	retval = FUNC4(&raw->cdev, raw->dev, 1);
	if (retval)
		goto error_connection_disable;

	raw->device = FUNC7(raw_class, &connection->bundle->dev,
				    raw->dev, raw, "gb!raw%d", minor);
	if (FUNC1(raw->device)) {
		retval = FUNC3(raw->device);
		goto error_del_cdev;
	}

	return 0;

error_del_cdev:
	FUNC5(&raw->cdev);

error_connection_disable:
	FUNC10(connection);

error_remove_ida:
	FUNC14(&minors, minor);

error_connection_destroy:
	FUNC9(connection);

error_free:
	FUNC15(raw);
	return retval;
}
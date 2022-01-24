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
typedef  int /*<<< orphan*/  u32 ;
struct greybus_descriptor_cport {scalar_t__ protocol_id; int /*<<< orphan*/  id; } ;
struct greybus_bundle_id {int dummy; } ;
struct gb_loopback_transfer_request {int dummy; } ;
struct gb_loopback {int id; int /*<<< orphan*/  file; int /*<<< orphan*/  kfifo_lat; struct gb_connection* task; int /*<<< orphan*/  mutex; struct gb_connection* dev; void* timeout_max; void* timeout_min; int /*<<< orphan*/  outstanding_operations; int /*<<< orphan*/  wq_completion; int /*<<< orphan*/  wq; struct gb_connection* connection; } ;
struct gb_connection {TYPE_1__* bundle; } ;
struct gb_bundle {int num_cports; struct greybus_descriptor_cport* cport_desc; } ;
struct device {TYPE_1__* bundle; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_4__ {int size_max; int /*<<< orphan*/  lock; int /*<<< orphan*/  count; int /*<<< orphan*/  root; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DEBUGFS_NAMELEN ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GB_LOOPBACK_TIMEOUT_MAX ; 
 int /*<<< orphan*/  GB_LOOPBACK_TIMEOUT_MIN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ GREYBUS_PROTOCOL_LOOPBACK ; 
 scalar_t__ FUNC0 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gb_connection*) ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,struct gb_loopback*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 struct gb_connection* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct gb_loopback*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct gb_connection*) ; 
 struct gb_connection* FUNC9 (struct gb_bundle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC11 (struct gb_connection*) ; 
 int FUNC12 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC13 (struct gb_connection*) ; 
 TYPE_2__ gb_dev ; 
 int /*<<< orphan*/  gb_loopback_dbgfs_latency_fops ; 
 int /*<<< orphan*/  gb_loopback_fn ; 
 int /*<<< orphan*/  gb_loopback_request_handler ; 
 int /*<<< orphan*/  FUNC14 (struct gb_loopback*) ; 
 int FUNC15 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC16 (struct gb_bundle*) ; 
 int /*<<< orphan*/  FUNC17 (struct gb_bundle*,struct gb_loopback*) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 void* FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int kfifo_depth ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct gb_loopback*) ; 
 struct gb_connection* FUNC25 (int /*<<< orphan*/ ,struct gb_loopback*,char*) ; 
 struct gb_loopback* FUNC26 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  loopback_class ; 
 int /*<<< orphan*/  loopback_groups ; 
 int /*<<< orphan*/  loopback_ida ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC32(struct gb_bundle *bundle,
			     const struct greybus_bundle_id *id)
{
	struct greybus_descriptor_cport *cport_desc;
	struct gb_connection *connection;
	struct gb_loopback *gb;
	struct device *dev;
	int retval;
	char name[DEBUGFS_NAMELEN];
	unsigned long flags;

	if (bundle->num_cports != 1)
		return -ENODEV;

	cport_desc = &bundle->cport_desc[0];
	if (cport_desc->protocol_id != GREYBUS_PROTOCOL_LOOPBACK)
		return -ENODEV;

	gb = FUNC26(sizeof(*gb), GFP_KERNEL);
	if (!gb)
		return -ENOMEM;

	connection = FUNC9(bundle, FUNC27(cport_desc->id),
					  gb_loopback_request_handler);
	if (FUNC0(connection)) {
		retval = FUNC2(connection);
		goto out_kzalloc;
	}

	gb->connection = connection;
	FUNC17(bundle, gb);

	FUNC20(&gb->wq);
	FUNC20(&gb->wq_completion);
	FUNC3(&gb->outstanding_operations, 0);
	FUNC14(gb);

	/* Reported values to user-space for min/max timeouts */
	gb->timeout_min = FUNC21(GB_LOOPBACK_TIMEOUT_MIN);
	gb->timeout_max = FUNC21(GB_LOOPBACK_TIMEOUT_MAX);

	if (!gb_dev.count) {
		/* Calculate maximum payload */
		gb_dev.size_max = FUNC15(connection);
		if (gb_dev.size_max <=
			sizeof(struct gb_loopback_transfer_request)) {
			retval = -EINVAL;
			goto out_connection_destroy;
		}
		gb_dev.size_max -= sizeof(struct gb_loopback_transfer_request);
	}

	/* Create per-connection sysfs and debugfs data-points */
	FUNC29(name, sizeof(name), "raw_latency_%s",
		 FUNC6(&connection->bundle->dev));
	gb->file = FUNC4(name, S_IFREG | 0444, gb_dev.root, gb,
				       &gb_loopback_dbgfs_latency_fops);

	gb->id = FUNC18(&loopback_ida, 0, 0, GFP_KERNEL);
	if (gb->id < 0) {
		retval = gb->id;
		goto out_debugfs_remove;
	}

	retval = FUNC12(connection);
	if (retval)
		goto out_ida_remove;

	dev = FUNC7(&loopback_class,
					&connection->bundle->dev,
					FUNC1(0, 0), gb, loopback_groups,
					"gb_loopback%d", gb->id);
	if (FUNC0(dev)) {
		retval = FUNC2(dev);
		goto out_connection_disable;
	}
	gb->dev = dev;

	/* Allocate kfifo */
	if (FUNC22(&gb->kfifo_lat, kfifo_depth * sizeof(u32),
			GFP_KERNEL)) {
		retval = -ENOMEM;
		goto out_conn;
	}
	/* Fork worker thread */
	FUNC28(&gb->mutex);
	gb->task = FUNC25(gb_loopback_fn, gb, "gb_loopback");
	if (FUNC0(gb->task)) {
		retval = FUNC2(gb->task);
		goto out_kfifo;
	}

	FUNC30(&gb_dev.lock, flags);
	gb_dev.count++;
	FUNC31(&gb_dev.lock, flags);

	FUNC13(connection);

	FUNC16(bundle);

	return 0;

out_kfifo:
	FUNC23(&gb->kfifo_lat);
out_conn:
	FUNC8(dev);
out_connection_disable:
	FUNC11(connection);
out_ida_remove:
	FUNC19(&loopback_ida, gb->id);
out_debugfs_remove:
	FUNC5(gb->file);
out_connection_destroy:
	FUNC10(connection);
out_kzalloc:
	FUNC24(gb);

	return retval;
}
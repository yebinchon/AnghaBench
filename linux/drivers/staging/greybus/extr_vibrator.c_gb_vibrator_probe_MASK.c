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
struct greybus_descriptor_cport {scalar_t__ protocol_id; int /*<<< orphan*/  id; } ;
struct greybus_bundle_id {int dummy; } ;
struct gb_vibrator_device {int minor; int /*<<< orphan*/  delayed_work; struct gb_connection* dev; struct gb_connection* connection; } ;
struct gb_connection {int dummy; } ;
struct gb_bundle {int num_cports; int /*<<< orphan*/  dev; struct greybus_descriptor_cport* cport_desc; } ;
typedef  struct gb_connection device ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ GREYBUS_PROTOCOL_VIBRATOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct gb_connection*) ; 
 struct gb_connection* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct gb_vibrator_device*,char*,int) ; 
 struct gb_connection* FUNC5 (struct gb_bundle*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC7 (struct gb_connection*) ; 
 int FUNC8 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC9 (struct gb_connection*,struct gb_vibrator_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct gb_bundle*) ; 
 int /*<<< orphan*/  gb_vibrator_worker ; 
 int /*<<< orphan*/  FUNC11 (struct gb_bundle*,struct gb_vibrator_device*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (struct gb_vibrator_device*) ; 
 struct gb_vibrator_device* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  minors ; 
 int /*<<< orphan*/  vibrator_class ; 

__attribute__((used)) static int FUNC17(struct gb_bundle *bundle,
			     const struct greybus_bundle_id *id)
{
	struct greybus_descriptor_cport *cport_desc;
	struct gb_connection *connection;
	struct gb_vibrator_device *vib;
	struct device *dev;
	int retval;

	if (bundle->num_cports != 1)
		return -ENODEV;

	cport_desc = &bundle->cport_desc[0];
	if (cport_desc->protocol_id != GREYBUS_PROTOCOL_VIBRATOR)
		return -ENODEV;

	vib = FUNC15(sizeof(*vib), GFP_KERNEL);
	if (!vib)
		return -ENOMEM;

	connection = FUNC5(bundle, FUNC16(cport_desc->id),
					  NULL);
	if (FUNC1(connection)) {
		retval = FUNC3(connection);
		goto err_free_vib;
	}
	FUNC9(connection, vib);

	vib->connection = connection;

	FUNC11(bundle, vib);

	retval = FUNC8(connection);
	if (retval)
		goto err_connection_destroy;

	/*
	 * For now we create a device in sysfs for the vibrator, but odds are
	 * there is a "real" device somewhere in the kernel for this, but I
	 * can't find it at the moment...
	 */
	vib->minor = FUNC12(&minors, 0, 0, GFP_KERNEL);
	if (vib->minor < 0) {
		retval = vib->minor;
		goto err_connection_disable;
	}
	dev = FUNC4(&vibrator_class, &bundle->dev,
			    FUNC2(0, 0), vib, "vibrator%d", vib->minor);
	if (FUNC1(dev)) {
		retval = -EINVAL;
		goto err_ida_remove;
	}
	vib->dev = dev;

	FUNC0(&vib->delayed_work, gb_vibrator_worker);

	FUNC10(bundle);

	return 0;

err_ida_remove:
	FUNC13(&minors, vib->minor);
err_connection_disable:
	FUNC7(connection);
err_connection_destroy:
	FUNC6(connection);
err_free_vib:
	FUNC14(vib);

	return retval;
}
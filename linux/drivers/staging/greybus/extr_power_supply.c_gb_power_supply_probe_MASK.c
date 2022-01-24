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
struct gb_power_supplies {int /*<<< orphan*/  supplies_lock; struct gb_connection* connection; } ;
struct gb_connection {int dummy; } ;
struct gb_bundle {int num_cports; struct greybus_descriptor_cport* cport_desc; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ GREYBUS_PROTOCOL_POWER_SUPPLY ; 
 scalar_t__ FUNC0 (struct gb_connection*) ; 
 int FUNC1 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_power_supplies*) ; 
 struct gb_connection* FUNC3 (struct gb_bundle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC5 (struct gb_connection*) ; 
 int FUNC6 (struct gb_connection*) ; 
 int FUNC7 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC8 (struct gb_connection*,struct gb_power_supplies*) ; 
 int /*<<< orphan*/  FUNC9 (struct gb_bundle*) ; 
 int FUNC10 (struct gb_power_supplies*) ; 
 int FUNC11 (struct gb_power_supplies*) ; 
 int /*<<< orphan*/  gb_supplies_request_handler ; 
 int /*<<< orphan*/  FUNC12 (struct gb_bundle*,struct gb_power_supplies*) ; 
 struct gb_power_supplies* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct gb_bundle *bundle,
				 const struct greybus_bundle_id *id)
{
	struct greybus_descriptor_cport *cport_desc;
	struct gb_connection *connection;
	struct gb_power_supplies *supplies;
	int ret;

	if (bundle->num_cports != 1)
		return -ENODEV;

	cport_desc = &bundle->cport_desc[0];
	if (cport_desc->protocol_id != GREYBUS_PROTOCOL_POWER_SUPPLY)
		return -ENODEV;

	supplies = FUNC13(sizeof(*supplies), GFP_KERNEL);
	if (!supplies)
		return -ENOMEM;

	connection = FUNC3(bundle, FUNC14(cport_desc->id),
					  gb_supplies_request_handler);
	if (FUNC0(connection)) {
		ret = FUNC1(connection);
		goto out;
	}

	supplies->connection = connection;
	FUNC8(connection, supplies);

	FUNC15(&supplies->supplies_lock);

	FUNC12(bundle, supplies);

	/* We aren't ready to receive an incoming request yet */
	ret = FUNC7(connection);
	if (ret)
		goto error_connection_destroy;

	ret = FUNC11(supplies);
	if (ret < 0)
		goto error_connection_disable;

	/* We are ready to receive an incoming request now, enable RX as well */
	ret = FUNC6(connection);
	if (ret)
		goto error_connection_disable;

	ret = FUNC10(supplies);
	if (ret < 0)
		goto error_connection_disable;

	FUNC9(bundle);
	return 0;

error_connection_disable:
	FUNC5(connection);
error_connection_destroy:
	FUNC4(connection);
out:
	FUNC2(supplies);
	return ret;
}
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
struct gb_lights {struct gb_connection* connection; int /*<<< orphan*/  lights_lock; } ;
struct gb_connection {int dummy; } ;
struct gb_bundle {int num_cports; struct greybus_descriptor_cport* cport_desc; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ GREYBUS_PROTOCOL_LIGHTS ; 
 scalar_t__ FUNC0 (struct gb_connection*) ; 
 int FUNC1 (struct gb_connection*) ; 
 struct gb_connection* FUNC2 (struct gb_bundle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC4 (struct gb_connection*) ; 
 int FUNC5 (struct gb_connection*) ; 
 int FUNC6 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC7 (struct gb_connection*,struct gb_lights*) ; 
 int FUNC8 (struct gb_lights*) ; 
 int FUNC9 (struct gb_lights*) ; 
 int /*<<< orphan*/  FUNC10 (struct gb_lights*) ; 
 int /*<<< orphan*/  gb_lights_request_handler ; 
 int /*<<< orphan*/  FUNC11 (struct gb_bundle*) ; 
 int /*<<< orphan*/  FUNC12 (struct gb_bundle*,struct gb_lights*) ; 
 struct gb_lights* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct gb_bundle *bundle,
			   const struct greybus_bundle_id *id)
{
	struct greybus_descriptor_cport *cport_desc;
	struct gb_connection *connection;
	struct gb_lights *glights;
	int ret;

	if (bundle->num_cports != 1)
		return -ENODEV;

	cport_desc = &bundle->cport_desc[0];
	if (cport_desc->protocol_id != GREYBUS_PROTOCOL_LIGHTS)
		return -ENODEV;

	glights = FUNC13(sizeof(*glights), GFP_KERNEL);
	if (!glights)
		return -ENOMEM;

	FUNC15(&glights->lights_lock);

	connection = FUNC2(bundle, FUNC14(cport_desc->id),
					  gb_lights_request_handler);
	if (FUNC0(connection)) {
		ret = FUNC1(connection);
		goto out;
	}

	glights->connection = connection;
	FUNC7(connection, glights);

	FUNC12(bundle, glights);

	/* We aren't ready to receive an incoming request yet */
	ret = FUNC6(connection);
	if (ret)
		goto error_connection_destroy;

	/*
	 * Setup all the lights devices over this connection, if anything goes
	 * wrong tear down all lights
	 */
	ret = FUNC8(glights);
	if (ret < 0)
		goto error_connection_disable;

	/* We are ready to receive an incoming request now, enable RX as well */
	ret = FUNC5(connection);
	if (ret)
		goto error_connection_disable;

	/* Enable & register lights */
	ret = FUNC9(glights);
	if (ret < 0)
		goto error_connection_disable;

	FUNC11(bundle);

	return 0;

error_connection_disable:
	FUNC4(connection);
error_connection_destroy:
	FUNC3(connection);
out:
	FUNC10(glights);
	return ret;
}
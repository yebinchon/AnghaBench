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
struct gb_log {struct gb_connection* connection; } ;
struct gb_connection {int dummy; } ;
struct gb_bundle {int num_cports; struct greybus_descriptor_cport* cport_desc; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ GREYBUS_PROTOCOL_LOG ; 
 scalar_t__ FUNC0 (struct gb_connection*) ; 
 int FUNC1 (struct gb_connection*) ; 
 struct gb_connection* FUNC2 (struct gb_bundle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_connection*) ; 
 int FUNC4 (struct gb_connection*) ; 
 int /*<<< orphan*/  gb_log_request_handler ; 
 int /*<<< orphan*/  FUNC5 (struct gb_bundle*,struct gb_log*) ; 
 int /*<<< orphan*/  FUNC6 (struct gb_log*) ; 
 struct gb_log* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct gb_bundle *bundle,
			const struct greybus_bundle_id *id)
{
	struct greybus_descriptor_cport *cport_desc;
	struct gb_connection *connection;
	struct gb_log *log;
	int retval;

	if (bundle->num_cports != 1)
		return -ENODEV;

	cport_desc = &bundle->cport_desc[0];
	if (cport_desc->protocol_id != GREYBUS_PROTOCOL_LOG)
		return -ENODEV;

	log = FUNC7(sizeof(*log), GFP_KERNEL);
	if (!log)
		return -ENOMEM;

	connection = FUNC2(bundle, FUNC8(cport_desc->id),
					  gb_log_request_handler);
	if (FUNC0(connection)) {
		retval = FUNC1(connection);
		goto error_free;
	}

	log->connection = connection;
	FUNC5(bundle, log);

	retval = FUNC4(connection);
	if (retval)
		goto error_connection_destroy;

	return 0;

error_connection_destroy:
	FUNC3(connection);
error_free:
	FUNC6(log);
	return retval;
}
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
struct greybus_descriptor_cport {int /*<<< orphan*/  id; } ;
struct gbaudio_module_info {struct gb_connection* mgmt_connection; } ;
struct gb_connection {int dummy; } ;
struct gb_bundle {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct gb_connection*) ; 
 int FUNC1 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct gb_connection* FUNC3 (struct gb_bundle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gbaudio_codec_request_handler ; 
 int /*<<< orphan*/  FUNC4 (struct gb_bundle*,struct gbaudio_module_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct gbaudio_module_info *gbmodule,
				struct greybus_descriptor_cport *cport_desc,
				struct gb_bundle *bundle)
{
	struct gb_connection *connection;

	/* Management Cport */
	if (gbmodule->mgmt_connection) {
		FUNC2(&bundle->dev,
			"Can't have multiple Management connections\n");
		return -ENODEV;
	}

	connection = FUNC3(bundle, FUNC5(cport_desc->id),
					  gbaudio_codec_request_handler);
	if (FUNC0(connection))
		return FUNC1(connection);

	FUNC4(bundle, gbmodule);
	gbmodule->mgmt_connection = connection;

	return 0;
}
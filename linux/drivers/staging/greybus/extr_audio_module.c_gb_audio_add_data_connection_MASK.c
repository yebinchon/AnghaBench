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
struct gbaudio_module_info {int /*<<< orphan*/  data_list; int /*<<< orphan*/  dev; } ;
struct gbaudio_data_connection {int /*<<< orphan*/  list; struct gb_connection* connection; int /*<<< orphan*/  data_cport; scalar_t__ id; } ;
struct gb_connection {int /*<<< orphan*/  intf_cport_id; } ;
struct gb_bundle {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GB_CONNECTION_FLAG_CSD ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct gb_connection*) ; 
 int FUNC1 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct gbaudio_data_connection*) ; 
 struct gbaudio_data_connection* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct gb_connection* FUNC4 (struct gb_bundle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gb_bundle*,struct gbaudio_module_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct gbaudio_module_info *gbmodule,
				struct greybus_descriptor_cport *cport_desc,
				struct gb_bundle *bundle)
{
	struct gb_connection *connection;
	struct gbaudio_data_connection *dai;

	dai = FUNC3(gbmodule->dev, sizeof(*dai), GFP_KERNEL);
	if (!dai)
		return -ENOMEM;

	connection = FUNC4(bundle,
						    FUNC6(cport_desc->id),
						    GB_CONNECTION_FLAG_CSD);
	if (FUNC0(connection)) {
		FUNC2(gbmodule->dev, dai);
		return FUNC1(connection);
	}

	FUNC5(bundle, gbmodule);
	dai->id = 0;
	dai->data_cport = connection->intf_cport_id;
	dai->connection = connection;
	FUNC7(&dai->list, &gbmodule->data_list);

	return 0;
}
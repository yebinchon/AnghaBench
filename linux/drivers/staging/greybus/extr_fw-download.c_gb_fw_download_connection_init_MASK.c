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
struct gb_connection {TYPE_1__* bundle; } ;
struct fw_download {int /*<<< orphan*/  id_map; int /*<<< orphan*/  mutex; struct gb_connection* connection; int /*<<< orphan*/  fw_requests; int /*<<< orphan*/ * parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_connection*,struct fw_download*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_download*) ; 
 struct fw_download* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct gb_connection *connection)
{
	struct fw_download *fw_download;
	int ret;

	if (!connection)
		return 0;

	fw_download = FUNC6(sizeof(*fw_download), GFP_KERNEL);
	if (!fw_download)
		return -ENOMEM;

	fw_download->parent = &connection->bundle->dev;
	FUNC0(&fw_download->fw_requests);
	FUNC4(&fw_download->id_map);
	FUNC2(connection, fw_download);
	fw_download->connection = connection;
	FUNC7(&fw_download->mutex);

	ret = FUNC1(connection);
	if (ret)
		goto err_destroy_id_map;

	return 0;

err_destroy_id_map:
	FUNC3(&fw_download->id_map);
	FUNC5(fw_download);

	return ret;
}
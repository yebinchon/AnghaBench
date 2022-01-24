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
struct gb_connection {int dummy; } ;
struct fw_mgmt {int disabled; int /*<<< orphan*/  node; int /*<<< orphan*/  connection; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev_num; int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fw_mgmt_class ; 
 int /*<<< orphan*/  fw_mgmt_minors_map ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct fw_mgmt* FUNC4 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_mutex ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct fw_mgmt*) ; 

void FUNC10(struct gb_connection *connection)
{
	struct fw_mgmt *fw_mgmt;

	if (!connection)
		return;

	fw_mgmt = FUNC4(connection);

	FUNC2(fw_mgmt_class, fw_mgmt->dev_num);
	FUNC1(&fw_mgmt->cdev);
	FUNC5(&fw_mgmt_minors_map, FUNC0(fw_mgmt->dev_num));

	/*
	 * Disallow any new ioctl operations on the char device and wait for
	 * existing ones to finish.
	 */
	FUNC7(&fw_mgmt->mutex);
	fw_mgmt->disabled = true;
	FUNC8(&fw_mgmt->mutex);

	/* All pending greybus operations should have finished by now */
	FUNC3(fw_mgmt->connection);

	/* Disallow new users to get access to the fw_mgmt structure */
	FUNC7(&list_mutex);
	FUNC6(&fw_mgmt->node);
	FUNC8(&list_mutex);

	/*
	 * All current users of fw_mgmt would have taken a reference to it by
	 * now, we can drop our reference and wait the last user will get
	 * fw_mgmt freed.
	 */
	FUNC9(fw_mgmt);
}
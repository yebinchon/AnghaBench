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
struct fw_mgmt {int /*<<< orphan*/  node; int /*<<< orphan*/  cdev; int /*<<< orphan*/  class_device; int /*<<< orphan*/  dev_num; int /*<<< orphan*/ * parent; int /*<<< orphan*/  kref; int /*<<< orphan*/  mutex; int /*<<< orphan*/  id_map; int /*<<< orphan*/  completion; struct gb_connection* connection; int /*<<< orphan*/  timeout_jiffies; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FW_MGMT_TIMEOUT_MS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NUM_MINORS ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  fw_mgmt_class ; 
 int /*<<< orphan*/  fw_mgmt_dev_num ; 
 int /*<<< orphan*/  fw_mgmt_fops ; 
 int /*<<< orphan*/  fw_mgmt_list ; 
 int /*<<< orphan*/  fw_mgmt_minors_map ; 
 int /*<<< orphan*/  FUNC8 (struct gb_connection*) ; 
 int FUNC9 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC10 (struct gb_connection*,struct fw_mgmt*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct fw_mgmt* FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_mutex ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct fw_mgmt*) ; 

int FUNC24(struct gb_connection *connection)
{
	struct fw_mgmt *fw_mgmt;
	int ret, minor;

	if (!connection)
		return 0;

	fw_mgmt = FUNC16(sizeof(*fw_mgmt), GFP_KERNEL);
	if (!fw_mgmt)
		return -ENOMEM;

	fw_mgmt->parent = &connection->bundle->dev;
	fw_mgmt->timeout_jiffies = FUNC19(FW_MGMT_TIMEOUT_MS);
	fw_mgmt->connection = connection;

	FUNC10(connection, fw_mgmt);
	FUNC14(&fw_mgmt->completion);
	FUNC11(&fw_mgmt->id_map);
	FUNC20(&fw_mgmt->mutex);
	FUNC15(&fw_mgmt->kref);

	FUNC21(&list_mutex);
	FUNC17(&fw_mgmt->node, &fw_mgmt_list);
	FUNC22(&list_mutex);

	ret = FUNC9(connection);
	if (ret)
		goto err_list_del;

	minor = FUNC12(&fw_mgmt_minors_map, 0, NUM_MINORS, GFP_KERNEL);
	if (minor < 0) {
		ret = minor;
		goto err_connection_disable;
	}

	/* Add a char device to allow userspace to interact with fw-mgmt */
	fw_mgmt->dev_num = FUNC2(FUNC1(fw_mgmt_dev_num), minor);
	FUNC6(&fw_mgmt->cdev, &fw_mgmt_fops);

	ret = FUNC4(&fw_mgmt->cdev, fw_mgmt->dev_num, 1);
	if (ret)
		goto err_remove_ida;

	/* Add a soft link to the previously added char-dev within the bundle */
	fw_mgmt->class_device = FUNC7(fw_mgmt_class, fw_mgmt->parent,
					      fw_mgmt->dev_num, NULL,
					      "gb-fw-mgmt-%d", minor);
	if (FUNC0(fw_mgmt->class_device)) {
		ret = FUNC3(fw_mgmt->class_device);
		goto err_del_cdev;
	}

	return 0;

err_del_cdev:
	FUNC5(&fw_mgmt->cdev);
err_remove_ida:
	FUNC13(&fw_mgmt_minors_map, minor);
err_connection_disable:
	FUNC8(connection);
err_list_del:
	FUNC21(&list_mutex);
	FUNC18(&fw_mgmt->node);
	FUNC22(&list_mutex);

	FUNC23(fw_mgmt);

	return ret;
}
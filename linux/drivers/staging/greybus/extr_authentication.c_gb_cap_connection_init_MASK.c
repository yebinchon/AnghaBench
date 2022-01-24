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
struct gb_cap {int /*<<< orphan*/  node; int /*<<< orphan*/  cdev; int /*<<< orphan*/  class_device; int /*<<< orphan*/  dev_num; int /*<<< orphan*/ * parent; int /*<<< orphan*/  kref; int /*<<< orphan*/  mutex; struct gb_connection* connection; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NUM_MINORS ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cap_class ; 
 int /*<<< orphan*/  cap_dev_num ; 
 int /*<<< orphan*/  cap_fops ; 
 int /*<<< orphan*/  cap_list ; 
 int /*<<< orphan*/  cap_minors_map ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct gb_connection*) ; 
 int FUNC9 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC10 (struct gb_connection*,struct gb_cap*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct gb_cap* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_mutex ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct gb_cap*) ; 

int FUNC21(struct gb_connection *connection)
{
	struct gb_cap *cap;
	int ret, minor;

	if (!connection)
		return 0;

	cap = FUNC14(sizeof(*cap), GFP_KERNEL);
	if (!cap)
		return -ENOMEM;

	cap->parent = &connection->bundle->dev;
	cap->connection = connection;
	FUNC17(&cap->mutex);
	FUNC10(connection, cap);
	FUNC13(&cap->kref);

	FUNC18(&list_mutex);
	FUNC15(&cap->node, &cap_list);
	FUNC19(&list_mutex);

	ret = FUNC9(connection);
	if (ret)
		goto err_list_del;

	minor = FUNC11(&cap_minors_map, 0, NUM_MINORS, GFP_KERNEL);
	if (minor < 0) {
		ret = minor;
		goto err_connection_disable;
	}

	/* Add a char device to allow userspace to interact with cap */
	cap->dev_num = FUNC2(FUNC1(cap_dev_num), minor);
	FUNC6(&cap->cdev, &cap_fops);

	ret = FUNC4(&cap->cdev, cap->dev_num, 1);
	if (ret)
		goto err_remove_ida;

	/* Add a soft link to the previously added char-dev within the bundle */
	cap->class_device = FUNC7(cap_class, cap->parent, cap->dev_num,
					  NULL, "gb-authenticate-%d", minor);
	if (FUNC0(cap->class_device)) {
		ret = FUNC3(cap->class_device);
		goto err_del_cdev;
	}

	return 0;

err_del_cdev:
	FUNC5(&cap->cdev);
err_remove_ida:
	FUNC12(&cap_minors_map, minor);
err_connection_disable:
	FUNC8(connection);
err_list_del:
	FUNC18(&list_mutex);
	FUNC16(&cap->node);
	FUNC19(&list_mutex);

	FUNC20(cap);

	return ret;
}
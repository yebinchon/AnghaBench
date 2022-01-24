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
struct gb_cap {int disabled; int /*<<< orphan*/  node; int /*<<< orphan*/  connection; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev_num; int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cap_class ; 
 int /*<<< orphan*/  cap_minors_map ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct gb_cap* FUNC4 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_mutex ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct gb_cap*) ; 

void FUNC10(struct gb_connection *connection)
{
	struct gb_cap *cap;

	if (!connection)
		return;

	cap = FUNC4(connection);

	FUNC2(cap_class, cap->dev_num);
	FUNC1(&cap->cdev);
	FUNC5(&cap_minors_map, FUNC0(cap->dev_num));

	/*
	 * Disallow any new ioctl operations on the char device and wait for
	 * existing ones to finish.
	 */
	FUNC7(&cap->mutex);
	cap->disabled = true;
	FUNC8(&cap->mutex);

	/* All pending greybus operations should have finished by now */
	FUNC3(cap->connection);

	/* Disallow new users to get access to the cap structure */
	FUNC7(&list_mutex);
	FUNC6(&cap->node);
	FUNC8(&list_mutex);

	/*
	 * All current users of cap would have taken a reference to it by
	 * now, we can drop our reference and wait the last user will get
	 * cap freed.
	 */
	FUNC9(cap);
}
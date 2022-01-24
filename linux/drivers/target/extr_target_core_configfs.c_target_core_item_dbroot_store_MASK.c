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
struct file {int dummy; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int DB_ROOT_LEN ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct file*) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  db_root ; 
 char* db_root_stage ; 
 TYPE_1__* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,int /*<<< orphan*/ *) ; 
 struct file* FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_tf_list ; 
 int /*<<< orphan*/  g_tf_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int FUNC10 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static ssize_t FUNC12(struct config_item *item,
					const char *page, size_t count)
{
	ssize_t read_bytes;
	struct file *fp;

	FUNC6(&g_tf_lock);
	if (!FUNC5(&g_tf_list)) {
		FUNC7(&g_tf_lock);
		FUNC9("db_root: cannot be changed: target drivers registered");
		return -EINVAL;
	}

	if (count > (DB_ROOT_LEN - 1)) {
		FUNC7(&g_tf_lock);
		FUNC9("db_root: count %d exceeds DB_ROOT_LEN-1: %u\n",
		       (int)count, DB_ROOT_LEN - 1);
		return -EINVAL;
	}

	read_bytes = FUNC10(db_root_stage, DB_ROOT_LEN, "%s", page);
	if (!read_bytes) {
		FUNC7(&g_tf_lock);
		return -EINVAL;
	}
	if (db_root_stage[read_bytes - 1] == '\n')
		db_root_stage[read_bytes - 1] = '\0';

	/* validate new db root before accepting it */
	fp = FUNC4(db_root_stage, O_RDONLY, 0);
	if (FUNC0(fp)) {
		FUNC7(&g_tf_lock);
		FUNC9("db_root: cannot open: %s\n", db_root_stage);
		return -EINVAL;
	}
	if (!FUNC1(FUNC2(fp)->i_mode)) {
		FUNC3(fp, NULL);
		FUNC7(&g_tf_lock);
		FUNC9("db_root: not a directory: %s\n", db_root_stage);
		return -EINVAL;
	}
	FUNC3(fp, NULL);

	FUNC11(db_root, db_root_stage, read_bytes);

	FUNC7(&g_tf_lock);

	FUNC8("Target_Core_ConfigFS: db_root set to %s\n", db_root);

	return read_bytes;
}
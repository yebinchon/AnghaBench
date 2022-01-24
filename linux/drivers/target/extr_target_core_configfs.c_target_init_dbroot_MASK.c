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
struct TYPE_2__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DB_ROOT_LEN ; 
 char* DB_ROOT_PREFERRED ; 
 scalar_t__ FUNC0 (struct file*) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  db_root ; 
 int /*<<< orphan*/  db_root_stage ; 
 TYPE_1__* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,int /*<<< orphan*/ *) ; 
 struct file* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(void)
{
	struct file *fp;

	FUNC7(db_root_stage, DB_ROOT_LEN, DB_ROOT_PREFERRED);
	fp = FUNC4(db_root_stage, O_RDONLY, 0);
	if (FUNC0(fp)) {
		FUNC6("db_root: cannot open: %s\n", db_root_stage);
		return;
	}
	if (!FUNC1(FUNC2(fp)->i_mode)) {
		FUNC3(fp, NULL);
		FUNC6("db_root: not a valid directory: %s\n", db_root_stage);
		return;
	}
	FUNC3(fp, NULL);

	FUNC8(db_root, db_root_stage, DB_ROOT_LEN);
	FUNC5("Target_Core_ConfigFS: db_root set to %s\n", db_root);
}
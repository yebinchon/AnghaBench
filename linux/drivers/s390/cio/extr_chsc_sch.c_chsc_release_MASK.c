#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  dbf ;
struct TYPE_5__ {int /*<<< orphan*/  completion; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  chsc_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  chsc_ready_for_use ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * on_close_chsc_area ; 
 int /*<<< orphan*/  on_close_mutex ; 
 TYPE_1__* on_close_request ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct inode *inode, struct file *filp)
{
	char dbf[13];
	int ret;

	FUNC8(&on_close_mutex);
	if (!on_close_chsc_area)
		goto out_unlock;
	FUNC6(&on_close_request->completion);
	FUNC0(0, "on_close");
	FUNC4(on_close_chsc_area);
	FUNC11(&chsc_lock);
	ret = FUNC2(on_close_chsc_area, on_close_request);
	FUNC12(&chsc_lock);
	if (ret == -EINPROGRESS) {
		FUNC13(&on_close_request->completion);
		ret = FUNC3(on_close_request);
	}
	FUNC10(dbf, sizeof(dbf), "relret:%d", ret);
	FUNC0(0, dbf);
	FUNC5((unsigned long)on_close_chsc_area);
	on_close_chsc_area = NULL;
	FUNC7(on_close_request);
	on_close_request = NULL;
out_unlock:
	FUNC9(&on_close_mutex);
	FUNC1(&chsc_ready_for_use);
	return 0;
}
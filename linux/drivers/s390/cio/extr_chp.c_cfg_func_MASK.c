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
struct work_struct {int dummy; } ;
struct chp_id {int /*<<< orphan*/  id; int /*<<< orphan*/  cssid; } ;
typedef  enum cfg_task_t { ____Placeholder_cfg_task_t } cfg_task_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
#define  cfg_configure 130 
#define  cfg_deconfigure 129 
 int FUNC1 (struct chp_id) ; 
 int /*<<< orphan*/  cfg_lock ; 
#define  cfg_none 128 
 int /*<<< orphan*/  FUNC2 (struct chp_id,int const) ; 
 int /*<<< orphan*/  cfg_wait_queue ; 
 int /*<<< orphan*/  cfg_work ; 
 int FUNC3 (struct chp_id*) ; 
 int /*<<< orphan*/  FUNC4 (struct chp_id) ; 
 int /*<<< orphan*/  FUNC5 (struct chp_id) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct chp_id) ; 
 int FUNC10 (struct chp_id) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct work_struct *work)
{
	struct chp_id chpid;
	enum cfg_task_t t;
	int rc;

	FUNC11(&cfg_lock);
	t = FUNC3(&chpid);
	FUNC12(&cfg_lock);

	switch (t) {
	case cfg_configure:
		rc = FUNC9(chpid);
		if (rc)
			FUNC0(2, "chp: sclp_chp_configure(%x.%02x)="
				      "%d\n", chpid.cssid, chpid.id, rc);
		else {
			FUNC6();
			FUNC5(chpid);
		}
		break;
	case cfg_deconfigure:
		rc = FUNC10(chpid);
		if (rc)
			FUNC0(2, "chp: sclp_chp_deconfigure(%x.%02x)="
				      "%d\n", chpid.cssid, chpid.id, rc);
		else {
			FUNC6();
			FUNC4(chpid);
		}
		break;
	case cfg_none:
		/* Get updated information after last change. */
		FUNC7();
		FUNC13(&cfg_wait_queue);
		return;
	}
	FUNC11(&cfg_lock);
	if (t == FUNC1(chpid))
		FUNC2(chpid, cfg_none);
	FUNC12(&cfg_lock);
	FUNC8(&cfg_work);
}
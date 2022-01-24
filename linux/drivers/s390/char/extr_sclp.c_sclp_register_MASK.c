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
struct sclp_register {int receive_mask; int send_mask; int /*<<< orphan*/  list; scalar_t__ pm_event_posted; scalar_t__ sclp_send_mask; scalar_t__ sclp_receive_mask; } ;
typedef  int sccb_mask_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  sclp_lock ; 
 int /*<<< orphan*/  sclp_reg_list ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC7(struct sclp_register *reg)
{
	unsigned long flags;
	sccb_mask_t receive_mask;
	sccb_mask_t send_mask;
	int rc;

	rc = FUNC3();
	if (rc)
		return rc;
	FUNC5(&sclp_lock, flags);
	/* Check event mask for collisions */
	FUNC0(&receive_mask, &send_mask);
	if (reg->receive_mask & receive_mask || reg->send_mask & send_mask) {
		FUNC6(&sclp_lock, flags);
		return -EBUSY;
	}
	/* Trigger initial state change callback */
	reg->sclp_receive_mask = 0;
	reg->sclp_send_mask = 0;
	reg->pm_event_posted = 0;
	FUNC1(&reg->list, &sclp_reg_list);
	FUNC6(&sclp_lock, flags);
	rc = FUNC4(1);
	if (rc) {
		FUNC5(&sclp_lock, flags);
		FUNC2(&reg->list);
		FUNC6(&sclp_lock, flags);
	}
	return rc;
}
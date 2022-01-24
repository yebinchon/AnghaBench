#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_6__ {scalar_t__ id; } ;
struct w1_slave {TYPE_2__* master; TYPE_1__ reg_num; } ;
struct w1_reg_num {scalar_t__ family; scalar_t__ id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  ack ;
struct TYPE_7__ {int /*<<< orphan*/  bus_mutex; int /*<<< orphan*/  pullup_duration; } ;

/* Variables and functions */
 int EIO ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  W1_42_CHAIN ; 
 int /*<<< orphan*/  W1_42_CHAIN_DONE ; 
 int /*<<< orphan*/  W1_42_CHAIN_DONE_INV ; 
 int /*<<< orphan*/  W1_42_CHAIN_OFF ; 
 int /*<<< orphan*/  W1_42_CHAIN_OFF_INV ; 
 int /*<<< orphan*/  W1_42_CHAIN_ON ; 
 int /*<<< orphan*/  W1_42_CHAIN_ON_INV ; 
 int /*<<< orphan*/  W1_42_COND_READ ; 
 scalar_t__ W1_42_FINISHED_BYTE ; 
 scalar_t__ W1_42_SUCCESS_CONFIRM_BYTE ; 
 int /*<<< orphan*/  W1_SKIP_ROM ; 
 struct w1_slave* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,int,char*,int) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*,scalar_t__*,int) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *device,
	struct device_attribute *attr, char *buf)
{
	struct w1_slave *sl = FUNC0(device);
	ssize_t c = PAGE_SIZE;
	int rv;
	int i;
	u8 ack;
	u64 rn;
	struct w1_reg_num *reg_num;
	int seq = 0;

	FUNC2(&sl->master->bus_mutex);
	/* Place all devices in CHAIN state */
	if (FUNC7(sl->master))
		goto error;
	FUNC8(sl->master, W1_SKIP_ROM);
	FUNC8(sl->master, W1_42_CHAIN);
	FUNC8(sl->master, W1_42_CHAIN_ON);
	FUNC8(sl->master, W1_42_CHAIN_ON_INV);
	FUNC1(sl->master->pullup_duration);

	/* check for acknowledgment */
	ack = FUNC5(sl->master);
	if (ack != W1_42_SUCCESS_CONFIRM_BYTE)
		goto error;

	/* In case the bus fails to send 0xFF, limit*/
	for (i = 0; i <= 64; i++) {
		if (FUNC7(sl->master))
			goto error;

		FUNC8(sl->master, W1_42_COND_READ);
		rv = FUNC6(sl->master, (u8 *)&rn, 8);
		reg_num = (struct w1_reg_num *) &rn;
		if (reg_num->family == W1_42_FINISHED_BYTE)
			break;
		if (sl->reg_num.id == reg_num->id)
			seq = i;

		FUNC8(sl->master, W1_42_CHAIN);
		FUNC8(sl->master, W1_42_CHAIN_DONE);
		FUNC8(sl->master, W1_42_CHAIN_DONE_INV);
		FUNC6(sl->master, &ack, sizeof(ack));

		/* check for acknowledgment */
		ack = FUNC5(sl->master);
		if (ack != W1_42_SUCCESS_CONFIRM_BYTE)
			goto error;

	}

	/* Exit from CHAIN state */
	if (FUNC7(sl->master))
		goto error;
	FUNC8(sl->master, W1_SKIP_ROM);
	FUNC8(sl->master, W1_42_CHAIN);
	FUNC8(sl->master, W1_42_CHAIN_OFF);
	FUNC8(sl->master, W1_42_CHAIN_OFF_INV);

	/* check for acknowledgment */
	ack = FUNC5(sl->master);
	if (ack != W1_42_SUCCESS_CONFIRM_BYTE)
		goto error;
	FUNC3(&sl->master->bus_mutex);

	c -= FUNC4(buf + PAGE_SIZE - c, c, "%d\n", seq);
	return PAGE_SIZE - c;
error:
	FUNC3(&sl->master->bus_mutex);
	return -EIO;
}
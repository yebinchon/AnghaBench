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
typedef  int /*<<< orphan*/  u16 ;
struct gb_vibrator_device {int /*<<< orphan*/  delayed_work; TYPE_1__* connection; } ;
struct gb_bundle {int dummy; } ;
struct TYPE_2__ {struct gb_bundle* bundle; } ;

/* Variables and functions */
 int /*<<< orphan*/  GB_VIBRATOR_TYPE_ON ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gb_bundle*) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_bundle*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gb_vibrator_device*) ; 

__attribute__((used)) static int FUNC7(struct gb_vibrator_device *vib, u16 timeout_ms)
{
	struct gb_bundle *bundle = vib->connection->bundle;
	int ret;

	ret = FUNC2(bundle);
	if (ret)
		return ret;

	/* Vibrator was switched ON earlier */
	if (FUNC0(&vib->delayed_work))
		FUNC6(vib);

	ret = FUNC1(vib->connection, GB_VIBRATOR_TYPE_ON,
				NULL, 0, NULL, 0);
	if (ret) {
		FUNC3(bundle);
		return ret;
	}

	FUNC5(&vib->delayed_work, FUNC4(timeout_ms));

	return 0;
}
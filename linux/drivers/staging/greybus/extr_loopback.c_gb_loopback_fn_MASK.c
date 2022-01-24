#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct gb_loopback {int type; scalar_t__ send_count; scalar_t__ iteration_max; scalar_t__ iteration_count; int us_wait; int /*<<< orphan*/  mutex; int /*<<< orphan*/  error; scalar_t__ async; int /*<<< orphan*/  ts; int /*<<< orphan*/  size; TYPE_2__* dev; int /*<<< orphan*/  wq; TYPE_1__* connection; } ;
struct gb_bundle {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_3__ {struct gb_bundle* bundle; } ;

/* Variables and functions */
 int GB_LOOPBACK_TYPE_PING ; 
 int GB_LOOPBACK_TYPE_SINK ; 
 int GB_LOOPBACK_TYPE_TRANSFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct gb_loopback*) ; 
 int FUNC2 (struct gb_loopback*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct gb_loopback*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gb_loopback*) ; 
 int /*<<< orphan*/  FUNC5 (struct gb_loopback*) ; 
 int /*<<< orphan*/  FUNC6 (struct gb_loopback*,int) ; 
 int FUNC7 (struct gb_loopback*) ; 
 int FUNC8 (struct gb_loopback*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct gb_loopback*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct gb_bundle*) ; 
 int /*<<< orphan*/  FUNC11 (struct gb_bundle*) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC19 (int,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC21(void *data)
{
	int error = 0;
	int us_wait = 0;
	int type;
	int ret;
	u32 size;

	struct gb_loopback *gb = data;
	struct gb_bundle *bundle = gb->connection->bundle;

	ret = FUNC10(bundle);
	if (ret)
		return ret;

	while (1) {
		if (!gb->type) {
			FUNC11(bundle);
			FUNC20(gb->wq, gb->type ||
						 FUNC12());
			ret = FUNC10(bundle);
			if (ret)
				return ret;
		}

		if (FUNC12())
			break;

		/* Limit the maximum number of in-flight async operations */
		FUNC5(gb);
		if (FUNC12())
			break;

		FUNC16(&gb->mutex);

		/* Optionally terminate */
		if (gb->send_count == gb->iteration_max) {
			FUNC17(&gb->mutex);

			/* Wait for synchronous and asynchronus completion */
			FUNC4(gb);

			/* Mark complete unless user-space has poked us */
			FUNC16(&gb->mutex);
			if (gb->iteration_count == gb->iteration_max) {
				gb->type = 0;
				gb->send_count = 0;
				FUNC18(&gb->dev->kobj,  NULL,
					     "iteration_count");
				FUNC0(&bundle->dev, "load test complete\n");
			} else {
				FUNC0(&bundle->dev,
					"continuing on with new test set\n");
			}
			FUNC17(&gb->mutex);
			continue;
		}
		size = gb->size;
		us_wait = gb->us_wait;
		type = gb->type;
		if (FUNC14(gb->ts) == 0)
			gb->ts = FUNC13();

		/* Else operations to perform */
		if (gb->async) {
			if (type == GB_LOOPBACK_TYPE_PING)
				error = FUNC1(gb);
			else if (type == GB_LOOPBACK_TYPE_TRANSFER)
				error = FUNC3(gb, size);
			else if (type == GB_LOOPBACK_TYPE_SINK)
				error = FUNC2(gb, size);

			if (error) {
				gb->error++;
				gb->iteration_count++;
			}
		} else {
			/* We are effectively single threaded here */
			if (type == GB_LOOPBACK_TYPE_PING)
				error = FUNC7(gb);
			else if (type == GB_LOOPBACK_TYPE_TRANSFER)
				error = FUNC9(gb, size);
			else if (type == GB_LOOPBACK_TYPE_SINK)
				error = FUNC8(gb, size);

			if (error)
				gb->error++;
			gb->iteration_count++;
			FUNC6(gb, !!error);
		}
		gb->send_count++;
		FUNC17(&gb->mutex);

		if (us_wait) {
			if (us_wait < 20000)
				FUNC19(us_wait, us_wait + 100);
			else
				FUNC15(us_wait / 1000);
		}
	}

	FUNC11(bundle);

	return 0;
}
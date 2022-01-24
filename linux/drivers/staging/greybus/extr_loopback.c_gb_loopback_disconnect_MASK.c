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
struct gb_loopback {int /*<<< orphan*/  connection; int /*<<< orphan*/  id; int /*<<< orphan*/  dev; int /*<<< orphan*/  file; int /*<<< orphan*/  kfifo_lat; int /*<<< orphan*/  task; } ;
struct gb_bundle {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__ gb_dev ; 
 int /*<<< orphan*/  FUNC6 (struct gb_loopback*) ; 
 int /*<<< orphan*/  FUNC7 (struct gb_bundle*) ; 
 int FUNC8 (struct gb_bundle*) ; 
 struct gb_loopback* FUNC9 (struct gb_bundle*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct gb_loopback*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  loopback_ida ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC16(struct gb_bundle *bundle)
{
	struct gb_loopback *gb = FUNC9(bundle);
	unsigned long flags;
	int ret;

	ret = FUNC8(bundle);
	if (ret)
		FUNC7(bundle);

	FUNC4(gb->connection);

	if (!FUNC0(gb->task))
		FUNC13(gb->task);

	FUNC11(&gb->kfifo_lat);
	FUNC5(gb->connection);
	FUNC1(gb->file);

	/*
	 * FIXME: gb_loopback_async_wait_all() is redundant now, as connection
	 * is disabled at the beginning and so we can't have any more
	 * incoming/outgoing requests.
	 */
	FUNC6(gb);

	FUNC14(&gb_dev.lock, flags);
	gb_dev.count--;
	FUNC15(&gb_dev.lock, flags);

	FUNC2(gb->dev);
	FUNC10(&loopback_ida, gb->id);

	FUNC3(gb->connection);
	FUNC12(gb);
}
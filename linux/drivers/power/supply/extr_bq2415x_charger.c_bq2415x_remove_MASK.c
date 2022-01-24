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
struct i2c_client {int dummy; } ;
struct TYPE_2__ {scalar_t__ notifier_call; } ;
struct bq2415x_device {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; int /*<<< orphan*/  id; int /*<<< orphan*/  notify_node; TYPE_1__ nb; } ;

/* Variables and functions */
 int /*<<< orphan*/  bq2415x_id ; 
 int /*<<< orphan*/  bq2415x_id_mutex ; 
 int /*<<< orphan*/  FUNC0 (struct bq2415x_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct bq2415x_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct bq2415x_device* FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client)
{
	struct bq2415x_device *bq = FUNC3(client);

	if (bq->nb.notifier_call)
		FUNC9(&bq->nb);

	FUNC8(bq->notify_node);
	FUNC0(bq);

	FUNC1(bq);

	FUNC6(&bq2415x_id_mutex);
	FUNC4(&bq2415x_id, bq->id);
	FUNC7(&bq2415x_id_mutex);

	FUNC2(bq->dev, "driver unregistered\n");

	FUNC5(bq->name);

	return 0;
}
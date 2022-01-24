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
struct nvec_msg {int dummy; } ;
struct nvec_chip {unsigned char sync_write_pending; int /*<<< orphan*/  sync_write_mutex; struct nvec_msg* last_sync_msg; int /*<<< orphan*/  dev; int /*<<< orphan*/  sync_write; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct nvec_chip*,unsigned char const*,short) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC7(struct nvec_chip *nvec,
		    const unsigned char *data, short size,
		    struct nvec_msg **msg)
{
	FUNC3(&nvec->sync_write_mutex);

	*msg = NULL;
	nvec->sync_write_pending = (data[1] << 8) + data[0];

	if (FUNC5(nvec, data, size) < 0) {
		FUNC4(&nvec->sync_write_mutex);
		return -ENOMEM;
	}

	FUNC0(nvec->dev, "nvec_sync_write: 0x%04x\n",
		nvec->sync_write_pending);
	if (!(FUNC6(&nvec->sync_write,
					  FUNC2(2000)))) {
		FUNC1(nvec->dev,
			 "timeout waiting for sync write to complete\n");
		FUNC4(&nvec->sync_write_mutex);
		return -ETIMEDOUT;
	}

	FUNC0(nvec->dev, "nvec_sync_write: pong!\n");

	*msg = nvec->last_sync_msg;

	FUNC4(&nvec->sync_write_mutex);

	return 0;
}
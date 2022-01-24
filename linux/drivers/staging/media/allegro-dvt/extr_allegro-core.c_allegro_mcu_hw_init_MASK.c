#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fw_info {int /*<<< orphan*/  suballocator_size; int /*<<< orphan*/  mailbox_size; int /*<<< orphan*/  mailbox_status; int /*<<< orphan*/  mailbox_cmd; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; int /*<<< orphan*/  paddr; } ;
struct allegro_dev {TYPE_1__ suballocator; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  mbox_status; int /*<<< orphan*/  mbox_command; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct allegro_dev*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct allegro_dev*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct allegro_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct allegro_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct allegro_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct allegro_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct allegro_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct allegro_dev*) ; 
 int FUNC8 (struct allegro_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static int FUNC10(struct allegro_dev *dev,
			       const struct fw_info *info)
{
	int err;

	FUNC2(dev, &dev->mbox_command,
			  info->mailbox_cmd, info->mailbox_size);
	FUNC2(dev, &dev->mbox_status,
			  info->mailbox_status, info->mailbox_size);

	FUNC4(dev);

	/* The mcu sends INIT after reset. */
	FUNC7(dev);
	err = FUNC8(dev, 5000);
	if (err < 0) {
		FUNC9(&dev->v4l2_dev,
			 "mcu did not send INIT after reset\n");
		err = -EIO;
		goto err_disable_interrupts;
	}

	err = FUNC0(dev, &dev->suballocator,
				   info->suballocator_size);
	if (err) {
		FUNC9(&dev->v4l2_dev,
			 "failed to allocate %zu bytes for suballocator\n",
			 info->suballocator_size);
		goto err_reset_mcu;
	}

	FUNC6(dev, dev->suballocator.paddr,
			      dev->suballocator.size);
	err = FUNC8(dev, 5000);
	if (err < 0) {
		FUNC9(&dev->v4l2_dev,
			 "mcu failed to configure sub-allocator\n");
		err = -EIO;
		goto err_free_suballocator;
	}

	return 0;

err_free_suballocator:
	FUNC1(dev, &dev->suballocator);
err_reset_mcu:
	FUNC5(dev);
err_disable_interrupts:
	FUNC3(dev);

	return err;
}
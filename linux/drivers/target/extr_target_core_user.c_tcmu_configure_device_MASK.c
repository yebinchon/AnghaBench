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
struct uio_info {int /*<<< orphan*/ * name; int /*<<< orphan*/  release; int /*<<< orphan*/  open; int /*<<< orphan*/  mmap; int /*<<< orphan*/  irq; int /*<<< orphan*/  irqcontrol; TYPE_1__* mem; int /*<<< orphan*/  version; } ;
struct tcmu_mailbox {int flags; void* cmdr_size; void* cmdr_off; int /*<<< orphan*/  version; } ;
struct tcmu_dev {int max_blocks; int data_size; scalar_t__ nl_reply_supported; int /*<<< orphan*/ * data_bitmap; struct tcmu_mailbox* mb_addr; struct uio_info uio_info; int /*<<< orphan*/  kref; int /*<<< orphan*/  node; void* ring_size; void* data_off; void* cmdr_size; scalar_t__ dbi_thresh; int /*<<< orphan*/  cmdr_lock; } ;
struct TYPE_4__ {int hw_block_size; int hw_max_sectors; int hw_queue_depth; scalar_t__ emulate_write_cache; } ;
struct se_device {TYPE_2__ dev_attrib; } ;
typedef  scalar_t__ phys_addr_t ;
struct TYPE_3__ {char* name; int /*<<< orphan*/  memtype; void* size; scalar_t__ addr; } ;

/* Variables and functions */
 void* CMDR_OFF ; 
 void* CMDR_SIZE ; 
 int DATA_BLOCK_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int PAGE_SIZE ; 
 struct tcmu_dev* FUNC1 (struct se_device*) ; 
 int TCMU_MAILBOX_FLAG_CAP_OOOC ; 
 int TCMU_MAILBOX_FLAG_CAP_READ_LEN ; 
 int /*<<< orphan*/  TCMU_MAILBOX_VERSION ; 
 int /*<<< orphan*/  UIO_IRQ_CUSTOM ; 
 int /*<<< orphan*/  UIO_MEM_NONE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  root_udev ; 
 int /*<<< orphan*/  root_udev_mutex ; 
 int /*<<< orphan*/  tcmu_dev_kref_release ; 
 int /*<<< orphan*/  tcmu_irqcontrol ; 
 scalar_t__ tcmu_kern_cmd_reply_supported ; 
 int /*<<< orphan*/  tcmu_mmap ; 
 int /*<<< orphan*/  tcmu_open ; 
 int /*<<< orphan*/  tcmu_release ; 
 int /*<<< orphan*/  tcmu_root_device ; 
 int FUNC12 (struct tcmu_dev*) ; 
 int FUNC13 (struct tcmu_dev*) ; 
 int FUNC14 (int /*<<< orphan*/ ,struct uio_info*) ; 
 int /*<<< orphan*/  FUNC15 (struct uio_info*) ; 
 int /*<<< orphan*/  FUNC16 (struct tcmu_mailbox*) ; 
 struct tcmu_mailbox* FUNC17 (void*) ; 

__attribute__((used)) static int FUNC18(struct se_device *dev)
{
	struct tcmu_dev *udev = FUNC1(dev);
	struct uio_info *info;
	struct tcmu_mailbox *mb;
	int ret = 0;

	ret = FUNC13(udev);
	if (ret)
		return ret;

	info = &udev->uio_info;

	FUNC10(&udev->cmdr_lock);
	udev->data_bitmap = FUNC5(udev->max_blocks, GFP_KERNEL);
	FUNC11(&udev->cmdr_lock);
	if (!udev->data_bitmap) {
		ret = -ENOMEM;
		goto err_bitmap_alloc;
	}

	udev->mb_addr = FUNC17(CMDR_SIZE);
	if (!udev->mb_addr) {
		ret = -ENOMEM;
		goto err_vzalloc;
	}

	/* mailbox fits in first part of CMDR space */
	udev->cmdr_size = CMDR_SIZE - CMDR_OFF;
	udev->data_off = CMDR_SIZE;
	udev->data_size = udev->max_blocks * DATA_BLOCK_SIZE;
	udev->dbi_thresh = 0; /* Default in Idle state */

	/* Initialise the mailbox of the ring buffer */
	mb = udev->mb_addr;
	mb->version = TCMU_MAILBOX_VERSION;
	mb->flags = TCMU_MAILBOX_FLAG_CAP_OOOC | TCMU_MAILBOX_FLAG_CAP_READ_LEN;
	mb->cmdr_off = CMDR_OFF;
	mb->cmdr_size = udev->cmdr_size;

	FUNC2(!FUNC0(udev->data_off));
	FUNC2(udev->data_size % PAGE_SIZE);
	FUNC2(udev->data_size % DATA_BLOCK_SIZE);

	info->version = FUNC3(TCMU_MAILBOX_VERSION);

	info->mem[0].name = "tcm-user command & data buffer";
	info->mem[0].addr = (phys_addr_t)(uintptr_t)udev->mb_addr;
	info->mem[0].size = udev->ring_size = udev->data_size + CMDR_SIZE;
	info->mem[0].memtype = UIO_MEM_NONE;

	info->irqcontrol = tcmu_irqcontrol;
	info->irq = UIO_IRQ_CUSTOM;

	info->mmap = tcmu_mmap;
	info->open = tcmu_open;
	info->release = tcmu_release;

	ret = FUNC14(tcmu_root_device, info);
	if (ret)
		goto err_register;

	/* User can set hw_block_size before enable the device */
	if (dev->dev_attrib.hw_block_size == 0)
		dev->dev_attrib.hw_block_size = 512;
	/* Other attributes can be configured in userspace */
	if (!dev->dev_attrib.hw_max_sectors)
		dev->dev_attrib.hw_max_sectors = 128;
	if (!dev->dev_attrib.emulate_write_cache)
		dev->dev_attrib.emulate_write_cache = 0;
	dev->dev_attrib.hw_queue_depth = 128;

	/* If user didn't explicitly disable netlink reply support, use
	 * module scope setting.
	 */
	if (udev->nl_reply_supported >= 0)
		udev->nl_reply_supported = tcmu_kern_cmd_reply_supported;

	/*
	 * Get a ref incase userspace does a close on the uio device before
	 * LIO has initiated tcmu_free_device.
	 */
	FUNC7(&udev->kref);

	ret = FUNC12(udev);
	if (ret)
		goto err_netlink;

	FUNC10(&root_udev_mutex);
	FUNC9(&udev->node, &root_udev);
	FUNC11(&root_udev_mutex);

	return 0;

err_netlink:
	FUNC8(&udev->kref, tcmu_dev_kref_release);
	FUNC15(&udev->uio_info);
err_register:
	FUNC16(udev->mb_addr);
	udev->mb_addr = NULL;
err_vzalloc:
	FUNC4(udev->data_bitmap);
	udev->data_bitmap = NULL;
err_bitmap_alloc:
	FUNC6(info->name);
	info->name = NULL;

	return ret;
}
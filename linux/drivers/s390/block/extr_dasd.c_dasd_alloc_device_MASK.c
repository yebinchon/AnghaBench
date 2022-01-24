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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct dasd_device {TYPE_1__ profile; int /*<<< orphan*/  state_mutex; void* target; void* state; int /*<<< orphan*/  requeue_requests; int /*<<< orphan*/  reload_device; int /*<<< orphan*/  restore_device; int /*<<< orphan*/  kick_work; int /*<<< orphan*/  timer; int /*<<< orphan*/  ccw_queue; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  tasklet_scheduled; int /*<<< orphan*/  mem_lock; void* ese_mem; int /*<<< orphan*/  ese_chunks; void* erp_mem; int /*<<< orphan*/  erp_chunks; void* ccw_mem; int /*<<< orphan*/  ccw_chunks; } ;

/* Variables and functions */
 void* DASD_STATE_NEW ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct dasd_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int GFP_ATOMIC ; 
 int GFP_DMA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dasd_device_tasklet ; 
 int /*<<< orphan*/  dasd_device_timeout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  do_kick_device ; 
 int /*<<< orphan*/  do_reload_device ; 
 int /*<<< orphan*/  do_requeue_requests ; 
 int /*<<< orphan*/  do_restore_device ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,int) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct dasd_device*) ; 
 struct dasd_device* FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct dasd_device *FUNC15(void)
{
	struct dasd_device *device;

	device = FUNC10(sizeof(struct dasd_device), GFP_ATOMIC);
	if (!device)
		return FUNC0(-ENOMEM);

	/* Get two pages for normal block device operations. */
	device->ccw_mem = (void *) FUNC3(GFP_ATOMIC | GFP_DMA, 1);
	if (!device->ccw_mem) {
		FUNC9(device);
		return FUNC0(-ENOMEM);
	}
	/* Get one page for error recovery. */
	device->erp_mem = (void *) FUNC8(GFP_ATOMIC | GFP_DMA);
	if (!device->erp_mem) {
		FUNC7((unsigned long) device->ccw_mem, 1);
		FUNC9(device);
		return FUNC0(-ENOMEM);
	}
	/* Get two pages for ese format. */
	device->ese_mem = (void *)FUNC3(GFP_ATOMIC | GFP_DMA, 1);
	if (!device->ese_mem) {
		FUNC6((unsigned long) device->erp_mem);
		FUNC7((unsigned long) device->ccw_mem, 1);
		FUNC9(device);
		return FUNC0(-ENOMEM);
	}

	FUNC5(&device->ccw_chunks, device->ccw_mem, PAGE_SIZE*2);
	FUNC5(&device->erp_chunks, device->erp_mem, PAGE_SIZE);
	FUNC5(&device->ese_chunks, device->ese_mem, PAGE_SIZE * 2);
	FUNC12(&device->mem_lock);
	FUNC4(&device->tasklet_scheduled, 0);
	FUNC13(&device->tasklet, dasd_device_tasklet,
		     (unsigned long) device);
	FUNC1(&device->ccw_queue);
	FUNC14(&device->timer, dasd_device_timeout, 0);
	FUNC2(&device->kick_work, do_kick_device);
	FUNC2(&device->restore_device, do_restore_device);
	FUNC2(&device->reload_device, do_reload_device);
	FUNC2(&device->requeue_requests, do_requeue_requests);
	device->state = DASD_STATE_NEW;
	device->target = DASD_STATE_NEW;
	FUNC11(&device->state_mutex);
	FUNC12(&device->profile.lock);
	return device;
}
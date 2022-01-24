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
typedef  unsigned long u32 ;
struct megasas_instance {unsigned long fw_crash_buffer_offset; scalar_t__ fw_crash_state; unsigned long fw_crash_buffer_size; int /*<<< orphan*/  crashdump_lock; scalar_t__* crash_buf; TYPE_1__* pdev; int /*<<< orphan*/  crash_dump_buf; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef  unsigned long ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ AVAILABLE ; 
 scalar_t__ COPYING ; 
 unsigned long CRASH_DMA_BUF_SIZE ; 
 unsigned long EINVAL ; 
 unsigned long PAGE_SIZE ; 
 struct Scsi_Host* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *cdev,
	struct device_attribute *attr, char *buf)
{
	struct Scsi_Host *shost = FUNC0(cdev);
	struct megasas_instance *instance =
		(struct megasas_instance *) shost->hostdata;
	u32 size;
	unsigned long dmachunk = CRASH_DMA_BUF_SIZE;
	unsigned long chunk_left_bytes;
	unsigned long src_addr;
	unsigned long flags;
	u32 buff_offset;

	FUNC3(&instance->crashdump_lock, flags);
	buff_offset = instance->fw_crash_buffer_offset;
	if (!instance->crash_dump_buf &&
		!((instance->fw_crash_state == AVAILABLE) ||
		(instance->fw_crash_state == COPYING))) {
		FUNC1(&instance->pdev->dev,
			"Firmware crash dump is not available\n");
		FUNC4(&instance->crashdump_lock, flags);
		return -EINVAL;
	}

	if (buff_offset > (instance->fw_crash_buffer_size * dmachunk)) {
		FUNC1(&instance->pdev->dev,
			"Firmware crash dump offset is out of range\n");
		FUNC4(&instance->crashdump_lock, flags);
		return 0;
	}

	size = (instance->fw_crash_buffer_size * dmachunk) - buff_offset;
	chunk_left_bytes = dmachunk - (buff_offset % dmachunk);
	size = (size > chunk_left_bytes) ? chunk_left_bytes : size;
	size = (size >= PAGE_SIZE) ? (PAGE_SIZE - 1) : size;

	src_addr = (unsigned long)instance->crash_buf[buff_offset / dmachunk] +
		(buff_offset % dmachunk);
	FUNC2(buf, (void *)src_addr, size);
	FUNC4(&instance->crashdump_lock, flags);

	return size;
}
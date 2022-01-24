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
struct scsi_cmnd {TYPE_1__* device; } ;
struct esp {TYPE_2__* host; } ;
struct TYPE_4__ {int /*<<< orphan*/  host_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct esp*) ; 
 int /*<<< orphan*/  esp_bus_reset_settle ; 
 int /*<<< orphan*/  FUNC1 (struct esp*) ; 
 struct esp* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct scsi_cmnd *cmd)
{
	struct esp *esp = FUNC2(cmd->device->host);
	unsigned long flags;

	FUNC3(esp->host->host_lock, flags);
	FUNC0(esp);
	FUNC1(esp);
	FUNC4(esp->host->host_lock, flags);

	FUNC5(esp_bus_reset_settle);

	return SUCCESS;
}
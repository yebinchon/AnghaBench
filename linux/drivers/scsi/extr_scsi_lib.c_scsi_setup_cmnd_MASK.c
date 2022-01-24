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
struct scsi_device {int dummy; } ;
struct scsi_cmnd {int /*<<< orphan*/  sc_data_direction; } ;
struct request {int dummy; } ;
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_NONE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ WRITE ; 
 struct scsi_cmnd* FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (struct request*) ; 
 scalar_t__ FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_device*,struct request*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_device*,struct request*) ; 

__attribute__((used)) static blk_status_t FUNC6(struct scsi_device *sdev,
		struct request *req)
{
	struct scsi_cmnd *cmd = FUNC0(req);

	if (!FUNC1(req))
		cmd->sc_data_direction = DMA_NONE;
	else if (FUNC3(req) == WRITE)
		cmd->sc_data_direction = DMA_TO_DEVICE;
	else
		cmd->sc_data_direction = DMA_FROM_DEVICE;

	if (FUNC2(req))
		return FUNC5(sdev, req);
	else
		return FUNC4(sdev, req);
}
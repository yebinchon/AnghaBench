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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  entity; } ;
struct iss_resizer_device {int /*<<< orphan*/  stopping; int /*<<< orphan*/  wait; TYPE_1__ subdev; } ;
struct iss_pipeline {int dummy; } ;
struct iss_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ISP5_IRQ_RSZ_FIFO_IN_BLK_ERR ; 
 int ISP5_IRQ_RSZ_FIFO_OVF ; 
 int ISP5_IRQ_RSZ_INT_DMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct iss_pipeline*) ; 
 int /*<<< orphan*/  FUNC3 (struct iss_resizer_device*) ; 
 struct iss_device* FUNC4 (struct iss_resizer_device*) ; 
 struct iss_pipeline* FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct iss_resizer_device *resizer, u32 events)
{
	struct iss_device *iss = FUNC4(resizer);
	struct iss_pipeline *pipe =
			     FUNC5(&resizer->subdev.entity);

	if (events & (ISP5_IRQ_RSZ_FIFO_IN_BLK_ERR |
		      ISP5_IRQ_RSZ_FIFO_OVF)) {
		FUNC0(iss->dev, "RSZ Err: FIFO_IN_BLK:%d, FIFO_OVF:%d\n",
			events & ISP5_IRQ_RSZ_FIFO_IN_BLK_ERR ? 1 : 0,
			events & ISP5_IRQ_RSZ_FIFO_OVF ? 1 : 0);
		FUNC2(pipe);
	}

	if (FUNC1(&resizer->wait,
					     &resizer->stopping))
		return;

	if (events & ISP5_IRQ_RSZ_INT_DMA)
		FUNC3(resizer);
}
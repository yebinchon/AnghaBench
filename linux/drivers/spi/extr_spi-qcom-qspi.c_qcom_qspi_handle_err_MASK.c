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
struct spi_message {int dummy; } ;
struct spi_master {int dummy; } ;
struct TYPE_2__ {scalar_t__ rem_bytes; } ;
struct qcom_qspi {int /*<<< orphan*/  lock; TYPE_1__ xfer; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ MSTR_INT_EN ; 
 struct qcom_qspi* FUNC0 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct spi_master *master,
				 struct spi_message *msg)
{
	struct qcom_qspi *ctrl = FUNC0(master);
	unsigned long flags;

	FUNC1(&ctrl->lock, flags);
	FUNC3(0, ctrl->base + MSTR_INT_EN);
	ctrl->xfer.rem_bytes = 0;
	FUNC2(&ctrl->lock, flags);
}
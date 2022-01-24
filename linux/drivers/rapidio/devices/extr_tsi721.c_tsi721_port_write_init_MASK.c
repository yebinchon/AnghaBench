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
struct tsi721_device {scalar_t__ regs; TYPE_1__* pdev; int /*<<< orphan*/  pw_fifo; int /*<<< orphan*/  pw_fifo_lock; int /*<<< orphan*/  pw_work; scalar_t__ pw_discard_count; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ TSI721_RIO_PW_CTL ; 
 int /*<<< orphan*/  TSI721_RIO_PW_CTL_PWC_REL ; 
 int TSI721_RIO_PW_MSG_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tsi721_pw_dpc ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC5(struct tsi721_device *priv)
{
	priv->pw_discard_count = 0;
	FUNC0(&priv->pw_work, tsi721_pw_dpc);
	FUNC3(&priv->pw_fifo_lock);
	if (FUNC2(&priv->pw_fifo,
			TSI721_RIO_PW_MSG_SIZE * 32, GFP_KERNEL)) {
		FUNC4(&priv->pdev->dev, "PW FIFO allocation failed");
		return -ENOMEM;
	}

	/* Use reliable port-write capture mode */
	FUNC1(TSI721_RIO_PW_CTL_PWC_REL, priv->regs + TSI721_RIO_PW_CTL);
	return 0;
}
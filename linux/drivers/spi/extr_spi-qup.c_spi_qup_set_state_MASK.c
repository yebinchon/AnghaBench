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
typedef  int u32 ;
struct spi_qup {scalar_t__ base; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ QUP_STATE ; 
 int QUP_STATE_CLEAR ; 
 int QUP_STATE_MASK ; 
 int QUP_STATE_PAUSE ; 
 int QUP_STATE_RESET ; 
 unsigned long SPI_DELAY_RETRY ; 
 int SPI_DELAY_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long,int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_qup*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct spi_qup *controller, u32 state)
{
	unsigned long loop;
	u32 cur_state;

	loop = 0;
	while (!FUNC2(controller)) {

		FUNC3(SPI_DELAY_THRESHOLD, SPI_DELAY_THRESHOLD * 2);

		if (++loop > SPI_DELAY_RETRY)
			return -EIO;
	}

	if (loop)
		FUNC0(controller->dev, "invalid state for %ld,us %d\n",
			loop, state);

	cur_state = FUNC1(controller->base + QUP_STATE);
	/*
	 * Per spec: for PAUSE_STATE to RESET_STATE, two writes
	 * of (b10) are required
	 */
	if (((cur_state & QUP_STATE_MASK) == QUP_STATE_PAUSE) &&
	    (state == QUP_STATE_RESET)) {
		FUNC4(QUP_STATE_CLEAR, controller->base + QUP_STATE);
		FUNC4(QUP_STATE_CLEAR, controller->base + QUP_STATE);
	} else {
		cur_state &= ~QUP_STATE_MASK;
		cur_state |= state;
		FUNC4(cur_state, controller->base + QUP_STATE);
	}

	loop = 0;
	while (!FUNC2(controller)) {

		FUNC3(SPI_DELAY_THRESHOLD, SPI_DELAY_THRESHOLD * 2);

		if (++loop > SPI_DELAY_RETRY)
			return -EIO;
	}

	return 0;
}
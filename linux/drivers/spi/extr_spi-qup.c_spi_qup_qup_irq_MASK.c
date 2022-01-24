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
struct spi_qup {int error; int /*<<< orphan*/  done; int /*<<< orphan*/  mode; scalar_t__ base; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ QUP_ERROR_FLAGS ; 
 int QUP_ERROR_INPUT_OVER_RUN ; 
 int QUP_ERROR_INPUT_UNDER_RUN ; 
 int QUP_ERROR_OUTPUT_OVER_RUN ; 
 int QUP_ERROR_OUTPUT_UNDER_RUN ; 
 scalar_t__ QUP_OPERATIONAL ; 
 int QUP_OP_IN_SERVICE_FLAG ; 
 int QUP_OP_MAX_INPUT_DONE_FLAG ; 
 int QUP_OP_OUT_SERVICE_FLAG ; 
 int SPI_ERROR_CLK_OVER_RUN ; 
 int SPI_ERROR_CLK_UNDER_RUN ; 
 scalar_t__ SPI_ERROR_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct spi_qup*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_qup*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_qup*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *dev_id)
{
	struct spi_qup *controller = dev_id;
	u32 opflags, qup_err, spi_err;
	unsigned long flags;
	int error = 0;

	qup_err = FUNC2(controller->base + QUP_ERROR_FLAGS);
	spi_err = FUNC2(controller->base + SPI_ERROR_FLAGS);
	opflags = FUNC2(controller->base + QUP_OPERATIONAL);

	FUNC9(qup_err, controller->base + QUP_ERROR_FLAGS);
	FUNC9(spi_err, controller->base + SPI_ERROR_FLAGS);

	if (qup_err) {
		if (qup_err & QUP_ERROR_OUTPUT_OVER_RUN)
			FUNC1(controller->dev, "OUTPUT_OVER_RUN\n");
		if (qup_err & QUP_ERROR_INPUT_UNDER_RUN)
			FUNC1(controller->dev, "INPUT_UNDER_RUN\n");
		if (qup_err & QUP_ERROR_OUTPUT_UNDER_RUN)
			FUNC1(controller->dev, "OUTPUT_UNDER_RUN\n");
		if (qup_err & QUP_ERROR_INPUT_OVER_RUN)
			FUNC1(controller->dev, "INPUT_OVER_RUN\n");

		error = -EIO;
	}

	if (spi_err) {
		if (spi_err & SPI_ERROR_CLK_OVER_RUN)
			FUNC1(controller->dev, "CLK_OVER_RUN\n");
		if (spi_err & SPI_ERROR_CLK_UNDER_RUN)
			FUNC1(controller->dev, "CLK_UNDER_RUN\n");

		error = -EIO;
	}

	FUNC7(&controller->lock, flags);
	if (!controller->error)
		controller->error = error;
	FUNC8(&controller->lock, flags);

	if (FUNC4(controller->mode)) {
		FUNC9(opflags, controller->base + QUP_OPERATIONAL);
	} else {
		if (opflags & QUP_OP_IN_SERVICE_FLAG)
			FUNC5(controller, &opflags);

		if (opflags & QUP_OP_OUT_SERVICE_FLAG)
			FUNC6(controller);

		if (!FUNC3(controller))
			FUNC0(&controller->done);
	}

	if (error)
		FUNC0(&controller->done);

	if (opflags & QUP_OP_MAX_INPUT_DONE_FLAG) {
		if (!FUNC4(controller->mode)) {
			if (FUNC3(controller))
				return IRQ_HANDLED;
		}
		FUNC0(&controller->done);
	}

	return IRQ_HANDLED;
}
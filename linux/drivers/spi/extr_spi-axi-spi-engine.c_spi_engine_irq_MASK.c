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
struct spi_message {int /*<<< orphan*/  frame_length; int /*<<< orphan*/  actual_length; scalar_t__ status; } ;
struct spi_master {int dummy; } ;
struct spi_engine {unsigned int int_enable; int /*<<< orphan*/  lock; scalar_t__ base; struct spi_message* msg; int /*<<< orphan*/  p; void* sync_id; void* completed_id; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int SPI_ENGINE_INT_CMD_ALMOST_EMPTY ; 
 unsigned int SPI_ENGINE_INT_SDI_ALMOST_FULL ; 
 unsigned int SPI_ENGINE_INT_SDO_ALMOST_EMPTY ; 
 unsigned int SPI_ENGINE_INT_SYNC ; 
 scalar_t__ SPI_ENGINE_REG_INT_ENABLE ; 
 scalar_t__ SPI_ENGINE_REG_INT_PENDING ; 
 scalar_t__ SPI_ENGINE_REG_SYNC_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_engine*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_engine*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_engine*) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_master*) ; 
 struct spi_engine* FUNC6 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *devid)
{
	struct spi_master *master = devid;
	struct spi_engine *spi_engine = FUNC6(master);
	unsigned int disable_int = 0;
	unsigned int pending;

	pending = FUNC1(spi_engine->base + SPI_ENGINE_REG_INT_PENDING);

	if (pending & SPI_ENGINE_INT_SYNC) {
		FUNC9(SPI_ENGINE_INT_SYNC,
			spi_engine->base + SPI_ENGINE_REG_INT_PENDING);
		spi_engine->completed_id = FUNC1(
			spi_engine->base + SPI_ENGINE_REG_SYNC_ID);
	}

	FUNC7(&spi_engine->lock);

	if (pending & SPI_ENGINE_INT_CMD_ALMOST_EMPTY) {
		if (!FUNC3(spi_engine))
			disable_int |= SPI_ENGINE_INT_CMD_ALMOST_EMPTY;
	}

	if (pending & SPI_ENGINE_INT_SDO_ALMOST_EMPTY) {
		if (!FUNC4(spi_engine))
			disable_int |= SPI_ENGINE_INT_SDO_ALMOST_EMPTY;
	}

	if (pending & (SPI_ENGINE_INT_SDI_ALMOST_FULL | SPI_ENGINE_INT_SYNC)) {
		if (!FUNC2(spi_engine))
			disable_int |= SPI_ENGINE_INT_SDI_ALMOST_FULL;
	}

	if (pending & SPI_ENGINE_INT_SYNC) {
		if (spi_engine->msg &&
		    spi_engine->completed_id == spi_engine->sync_id) {
			struct spi_message *msg = spi_engine->msg;

			FUNC0(spi_engine->p);
			msg->status = 0;
			msg->actual_length = msg->frame_length;
			spi_engine->msg = NULL;
			FUNC5(master);
			disable_int |= SPI_ENGINE_INT_SYNC;
		}
	}

	if (disable_int) {
		spi_engine->int_enable &= ~disable_int;
		FUNC9(spi_engine->int_enable,
			spi_engine->base + SPI_ENGINE_REG_INT_ENABLE);
	}

	FUNC8(&spi_engine->lock);

	return IRQ_HANDLED;
}
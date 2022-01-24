#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint ;
struct nvec_chip {unsigned int state; unsigned int i2c_addr; int /*<<< orphan*/  dev; scalar_t__ base; TYPE_2__* rx; TYPE_1__* tx; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_5__ {unsigned int* data; int pos; } ;
struct TYPE_4__ {unsigned char* data; int pos; int size; } ;

/* Variables and functions */
 unsigned long END_TRANS ; 
 unsigned long I2C_SL_IRQ ; 
 scalar_t__ I2C_SL_RCVD ; 
 scalar_t__ I2C_SL_STATUS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  NVEC_MSG_RX ; 
 int NVEC_MSG_SIZE ; 
 unsigned long RCVD ; 
 unsigned long RNW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,unsigned int,char*,unsigned char,unsigned int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct nvec_chip*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvec_chip*,unsigned long,int) ; 
 TYPE_2__* FUNC4 (struct nvec_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nvec_chip*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvec_chip*) ; 
 int /*<<< orphan*/  FUNC7 (struct nvec_chip*) ; 
 int /*<<< orphan*/  FUNC8 (struct nvec_chip*) ; 
 void* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC13(int irq, void *dev)
{
	unsigned long status;
	unsigned int received = 0;
	unsigned char to_send = 0xff;
	const unsigned long irq_mask = I2C_SL_IRQ | END_TRANS | RCVD | RNW;
	struct nvec_chip *nvec = dev;
	unsigned int state = nvec->state;

	status = FUNC9(nvec->base + I2C_SL_STATUS);

	/* Filter out some errors */
	if ((status & irq_mask) == 0 && (status & ~irq_mask) != 0) {
		FUNC1(nvec->dev, "unexpected irq mask %lx\n", status);
		return IRQ_HANDLED;
	}
	if ((status & I2C_SL_IRQ) == 0) {
		FUNC1(nvec->dev, "Spurious IRQ\n");
		return IRQ_HANDLED;
	}

	/* The EC did not request a read, so it send us something, read it */
	if ((status & RNW) == 0) {
		received = FUNC9(nvec->base + I2C_SL_RCVD);
		if (status & RCVD)
			FUNC12(0, nvec->base + I2C_SL_RCVD);
	}

	if (status == (I2C_SL_IRQ | RCVD))
		nvec->state = 0;

	switch (nvec->state) {
	case 0:		/* Verify that its a transfer start, the rest later */
		if (status != (I2C_SL_IRQ | RCVD))
			FUNC3(nvec, status, false);
		break;
	case 1:		/* command byte */
		if (status != I2C_SL_IRQ) {
			FUNC3(nvec, status, true);
		} else {
			nvec->rx = FUNC4(nvec, NVEC_MSG_RX);
			/* Should not happen in a normal world */
			if (FUNC11(!nvec->rx)) {
				nvec->state = 0;
				break;
			}
			nvec->rx->data[0] = received;
			nvec->rx->pos = 1;
			nvec->state = 2;
		}
		break;
	case 2:		/* first byte after command */
		if (status == (I2C_SL_IRQ | RNW | RCVD)) {
			FUNC10(33);
			if (nvec->rx->data[0] != 0x01) {
				FUNC1(nvec->dev,
					"Read without prior read command\n");
				nvec->state = 0;
				break;
			}
			FUNC5(nvec, nvec->rx);
			nvec->state = 3;
			FUNC8(nvec);
			to_send = nvec->tx->data[0];
			nvec->tx->pos = 1;
		} else if (status == (I2C_SL_IRQ)) {
			nvec->rx->data[1] = received;
			nvec->rx->pos = 2;
			nvec->state = 4;
		} else {
			FUNC3(nvec, status, true);
		}
		break;
	case 3:		/* EC does a block read, we transmit data */
		if (status & END_TRANS) {
			FUNC7(nvec);
		} else if ((status & RNW) == 0 || (status & RCVD)) {
			FUNC3(nvec, status, true);
		} else if (nvec->tx && nvec->tx->pos < nvec->tx->size) {
			to_send = nvec->tx->data[nvec->tx->pos++];
		} else {
			FUNC1(nvec->dev,
				"tx buffer underflow on %p (%u > %u)\n",
				nvec->tx,
				(uint)(nvec->tx ? nvec->tx->pos : 0),
				(uint)(nvec->tx ? nvec->tx->size : 0));
			nvec->state = 0;
		}
		break;
	case 4:		/* EC does some write, we read the data */
		if ((status & (END_TRANS | RNW)) == END_TRANS)
			FUNC6(nvec);
		else if (status & (RNW | RCVD))
			FUNC3(nvec, status, true);
		else if (nvec->rx && nvec->rx->pos < NVEC_MSG_SIZE)
			nvec->rx->data[nvec->rx->pos++] = received;
		else
			FUNC1(nvec->dev,
				"RX buffer overflow on %p: Trying to write byte %u of %u\n",
				nvec->rx, nvec->rx ? nvec->rx->pos : 0,
				NVEC_MSG_SIZE);
		break;
	default:
		nvec->state = 0;
	}

	/* If we are told that a new transfer starts, verify it */
	if ((status & (RCVD | RNW)) == RCVD) {
		if (received != nvec->i2c_addr)
			FUNC1(nvec->dev,
				"received address 0x%02x, expected 0x%02x\n",
				received, nvec->i2c_addr);
		nvec->state = 1;
	}

	/* Send data if requested, but not on end of transmission */
	if ((status & (RNW | END_TRANS)) == RNW)
		FUNC12(to_send, nvec->base + I2C_SL_RCVD);

	/* If we have send the first byte */
	if (status == (I2C_SL_IRQ | RNW | RCVD))
		FUNC2(nvec, 1);

	FUNC0(nvec->dev,
		"Handled: %s 0x%02x, %s 0x%02x in state %u [%s%s%s]\n",
		(status & RNW) == 0 ? "received" : "R=",
		received,
		(status & (RNW | END_TRANS)) ? "sent" : "S=",
		to_send,
		state,
		status & END_TRANS ? " END_TRANS" : "",
		status & RCVD ? " RCVD" : "",
		status & RNW ? " RNW" : "");

	/*
	 * TODO: A correct fix needs to be found for this.
	 *
	 * We experience less incomplete messages with this delay than without
	 * it, but we don't know why. Help is appreciated.
	 */
	FUNC10(100);

	return IRQ_HANDLED;
}
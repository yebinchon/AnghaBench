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
typedef  int u64 ;
typedef  int u32 ;
struct ptp_clock_event {int index; int timestamp; void* type; } ;
struct ixp_clock {int /*<<< orphan*/  ptp_clock; scalar_t__ exts1_enabled; scalar_t__ exts0_enabled; struct ixp46x_ts_regs* regs; } ;
struct ixp46x_ts_regs {int /*<<< orphan*/  event; int /*<<< orphan*/  amms_lo; int /*<<< orphan*/  amms_hi; int /*<<< orphan*/  asms_lo; int /*<<< orphan*/  asms_hi; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 void* PTP_CLOCK_EXTTS ; 
 int TICKS_NS_SHIFT ; 
 int TSER_SNM ; 
 int TSER_SNS ; 
 int TTIPEND ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ptp_clock_event*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *priv)
{
	struct ixp_clock *ixp_clock = priv;
	struct ixp46x_ts_regs *regs = ixp_clock->regs;
	struct ptp_clock_event event;
	u32 ack = 0, lo, hi, val;

	val = FUNC0(&regs->event);

	if (val & TSER_SNS) {
		ack |= TSER_SNS;
		if (ixp_clock->exts0_enabled) {
			hi = FUNC0(&regs->asms_hi);
			lo = FUNC0(&regs->asms_lo);
			event.type = PTP_CLOCK_EXTTS;
			event.index = 0;
			event.timestamp = ((u64) hi) << 32;
			event.timestamp |= lo;
			event.timestamp <<= TICKS_NS_SHIFT;
			FUNC2(ixp_clock->ptp_clock, &event);
		}
	}

	if (val & TSER_SNM) {
		ack |= TSER_SNM;
		if (ixp_clock->exts1_enabled) {
			hi = FUNC0(&regs->amms_hi);
			lo = FUNC0(&regs->amms_lo);
			event.type = PTP_CLOCK_EXTTS;
			event.index = 1;
			event.timestamp = ((u64) hi) << 32;
			event.timestamp |= lo;
			event.timestamp <<= TICKS_NS_SHIFT;
			FUNC2(ixp_clock->ptp_clock, &event);
		}
	}

	if (val & TTIPEND)
		ack |= TTIPEND; /* this bit seems to be always set */

	if (ack) {
		FUNC1(ack, &regs->event);
		return IRQ_HANDLED;
	} else
		return IRQ_NONE;
}
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
struct Scsi_Host {int dummy; } ;
struct NCR5380_hostdata {int id_mask; } ;

/* Variables and functions */
 int ICR_ASSERT_DATA ; 
 int ICR_ASSERT_SEL ; 
 int ICR_BASE ; 
 int /*<<< orphan*/  INITIATOR_COMMAND_REG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  OUTPUT_DATA_REG ; 
 int PHASE_MASK ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  SELECT_ENABLE_REG ; 
 int /*<<< orphan*/  STATUS_REG ; 
 int /*<<< orphan*/  TARGET_COMMAND_REG ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct NCR5380_hostdata* FUNC4 (struct Scsi_Host*) ; 

__attribute__((used)) static void FUNC5(struct Scsi_Host *instance)
{
	struct NCR5380_hostdata *hostdata = FUNC4(instance);

	/*
	 * An interrupt is triggered whenever BSY = false, SEL = true
	 * and a bit set in the SELECT_ENABLE_REG is asserted on the
	 * SCSI bus.
	 *
	 * Note that the bus is only driven when the phase control signals
	 * (I/O, C/D, and MSG) match those in the TCR.
	 */
	FUNC1(TARGET_COMMAND_REG,
	              FUNC2(FUNC0(STATUS_REG) & PHASE_MASK));
	FUNC1(SELECT_ENABLE_REG, hostdata->id_mask);
	FUNC1(OUTPUT_DATA_REG, hostdata->id_mask);
	FUNC1(INITIATOR_COMMAND_REG,
	              ICR_BASE | ICR_ASSERT_DATA | ICR_ASSERT_SEL);

	FUNC3(1);

	FUNC1(INITIATOR_COMMAND_REG, ICR_BASE);
	FUNC1(SELECT_ENABLE_REG, 0);
	FUNC1(TARGET_COMMAND_REG, 0);
}